package com.humg.smp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.humg.smp.constant.GenderType;
import com.humg.smp.constant.RoleType;
import com.humg.smp.constant.ViewConstants;
import com.humg.smp.dto.request.UserRequest;
import com.humg.smp.dto.respone.PageInfo;
import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.Profile;
import com.humg.smp.mapping.PageMapping;
import com.humg.smp.service.UserService.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;





@Controller
public class UserController {
    
    @Autowired
    UserService userService;


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
        return "user/user";
    }

        @GetMapping("/user/{userId}")
        public String getEditUser(@PathVariable("userId") Long userId, Model m) {
            try{
                Profile p=userService.getUserProfileById(userId);
                System.out.println(p);
                m.addAttribute(ViewConstants.USER_PROFILE,p);
                m.addAttribute(ViewConstants.ROLE_TYPE, RoleType.values() );
                m.addAttribute(ViewConstants.GENDER_TYPE, GenderType.values());
                return "user/editUser";

            }
            catch(Exception e){
                return "user/editUser";
            }

            
        }
    
    @PostMapping("/user")
    public String postUser(@ModelAttribute UserRequest userRequest) {
        userService.createUser(userRequest);

        System.out.println(userRequest.getCodeRole().name());
        return "redirect:/user";
    }
    
    
}
