package com.humg.smp.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.humg.smp.constant.GenderType;
import com.humg.smp.constant.RoleType;
import com.humg.smp.constant.StatusType;
import com.humg.smp.constant.ViewConstants;
import com.humg.smp.dto.request.UserRequest;
import com.humg.smp.dto.respone.PageInfo;
import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.ClassInfo;
import com.humg.smp.entity.Profile;
import com.humg.smp.mapping.PageMapping;
import com.humg.smp.service.UserService.UserService;
import com.humg.smp.service.classinfo.ClassInfoService;
import com.humg.smp.service.majorchild.MajorChildService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;





@Controller
public class UserController {
    
    @Autowired
    UserService userService;

    @Autowired
    MajorChildService majorChildService;

    @Autowired
    ClassInfoService classInfoService;

    @GetMapping("/user")
    public String getUserPage(
        @RequestParam(defaultValue = "1") int page,
        @RequestParam(defaultValue = "5") int pageSize,
        Model model) {  
        
        model.addAttribute("userRequest", new UserRequest());
        PageRespone<UserRespone> pageUserRespone=userService.getAllUser(pageSize, page-1);
        PageInfo pageInfo= PageMapping.toInfo(pageUserRespone);
        model.addAttribute(ViewConstants.LIST_USER,pageUserRespone.getContent());
        model.addAttribute(ViewConstants.ROLE_TYPE, RoleType.values() );
        model.addAttribute(ViewConstants.PAGE_INFO, pageInfo);
        model.addAttribute("userPage",pageUserRespone );
        
        return "user/user";
    }

        @GetMapping("/user/{userId}")
        public String getEditUser(@PathVariable("userId") Long userId, Model m) {
            try{
                Profile p=userService.getUserProfileById(userId);
                m.addAttribute(ViewConstants.USER_PROFILE,p);
                m.addAttribute(ViewConstants.ROLE_TYPE, RoleType.values() );
                m.addAttribute(ViewConstants.GENDER_TYPE, GenderType.values());
                m.addAttribute(ViewConstants.STATUS_TYPE, StatusType.values());
                m.addAttribute(ViewConstants.MAJOR_LIST, majorChildService.getAll());
                m.addAttribute(ViewConstants.CLASS_LIST, classInfoService.getClassInfo());
                
                return "user/editUser";

            }
            catch(Exception e){
                return "user/editUser";
            }

            
        }
    
    @PostMapping("/user")
    public String postUser(@ModelAttribute UserRequest userRequest, RedirectAttributes r) {
        userService.createUser(userRequest);
        
        r.addFlashAttribute("successMessage", "Thêm người dùng thành công!");
        return "redirect:/user";
    }
    
    @PostMapping("/deleteuser/{userId}")
    public String deleteUser(@PathVariable("userId") Long userId ){
        userService.deleteUser(userId);
        return "redirect:/user";    }
}
