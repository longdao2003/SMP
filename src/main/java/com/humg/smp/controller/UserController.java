package com.humg.smp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.humg.smp.constant.RoleType;
import com.humg.smp.constant.ViewConstants;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.User;
import com.humg.smp.service.UserService.UserService;



@Controller
public class UserController {
    
    @Autowired
    UserService userService;


    @GetMapping("/user")
    public String getUserPage(Model model) {

        List<UserRespone> users=userService.getAllUser();

        model.addAttribute(ViewConstants.LIST_USER,userService.getAllUser());
        model.addAttribute(ViewConstants.ROLE_TYPE, RoleType.values() );
        return "user/user";
    }
    
}
