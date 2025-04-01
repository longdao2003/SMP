package com.humg.smp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.humg.smp.constant.ViewConstants;
import com.humg.smp.dto.request.LoginDTO;
import com.humg.smp.entity.Menu;
import com.humg.smp.entity.Role;
import com.humg.smp.entity.User;
import com.humg.smp.entity.UserRole;
import com.humg.smp.service.UserService.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;




@Controller

public class LoginController {
    @Autowired
    private UserService userService;


    @GetMapping("/login")
    public String getLogin(Model model, HttpSession session) {
        if (session.getAttribute(ViewConstants.USER_INFO) != null){
            return "redirect:/dashboard";
        }
        model.addAttribute("loginDTO", new LoginDTO());
        return "login/login";
    }

    @PostMapping("/processlogin")
    public String processLogin(Model m,@ModelAttribute @Valid LoginDTO loginDTO, BindingResult result, HttpSession session) {
        if (result.hasErrors()){
            return "login/login";
        }

        try{
            User u= userService.getUser(loginDTO);
            UserRole userRole= u.getUserRoles().iterator().next();

            List<Menu> menuList=new ArrayList<>(); 
            Role role=userRole.getRole();
            for (var obj: role.getAuths()){
              Menu menu=obj.getMenu();
              if (menu.getParent()==0 && menu.getOrderIndex()!=-1 && menu.getActiveFlag() && obj.getPermission()){
                menuList.add(menu);
              }

            }
            sortMenu(menuList);
            session.setAttribute(ViewConstants.USER_INFO,u);
            session.setAttribute("role", role.getRoleName());
            session.setAttribute(ViewConstants.MENU_INFO, menuList);
            System.out.println(menuList);
            return "redirect:/dashboard";
        }
        catch(Exception e){
            m.addAttribute(ViewConstants.ERROR,e.getMessage());
            return "login/login";
        }
    }
    @GetMapping("/access-deny")
    public String getError() {
        return "error/error";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate(); 
        return "redirect:/login";
    }

    
    private void sortMenu(List<Menu> menus) {
        menus.sort((o1, o2) -> o1.getOrderIndex() - o2.getOrderIndex());
    
    }

}
