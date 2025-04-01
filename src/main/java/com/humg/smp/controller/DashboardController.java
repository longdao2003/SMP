package com.humg.smp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.humg.smp.constant.ViewConstants;
import com.humg.smp.entity.Profile;
import com.humg.smp.entity.User;
import com.humg.smp.service.profile.ProfileService;


import jakarta.servlet.http.HttpSession;


@Controller
public class DashboardController {

    @Autowired
    ProfileService profileService;
    @GetMapping("/dashboard")
    public String getDashboard(Model model,HttpSession session) {
        User u=(User) session.getAttribute(ViewConstants.USER_INFO);

        if(u ==null){
            return "redirect:/login";
        }

        model.addAttribute(ViewConstants.USER_PROFILE, u.getProfile());


        return "dashboard/dashboard";
        
        
    }
    @GetMapping("")
    public String getMethodName(HttpSession session) {
        if (session.getAttribute(ViewConstants.USER_INFO) != null){
            
            return "redirect:/dashboard";
        }
        else{
            return "redirect:/login";
        }
    }
    
    
}
