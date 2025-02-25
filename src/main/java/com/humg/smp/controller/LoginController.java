package com.humg.smp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.humg.smp.dto.LoginDTO;
import com.humg.smp.service.authentication.AuthService;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
@RequestMapping("/login")
public class LoginController {
    
    @Autowired
    AuthService authService;
    
    
    @GetMapping("")
    public String showLoginPage() {
        return "login";
    }

    @PostMapping("")
    public String postMethodName(@RequestBody LoginDTO loginDTO, HttpSession session) {
        if (authService.authenticate(loginDTO)){
            String role=authService.getUserRole(loginDTO);
            session.setAttribute("userID", loginDTO.getUserID());   
            session.setAttribute("role",role);
            return "redirect:/dashboard";
        }
        
        return "login";
    }
    




    
}
