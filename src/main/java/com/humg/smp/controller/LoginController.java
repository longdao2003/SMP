package com.humg.smp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.humg.smp.dto.LoginDTO;
import com.humg.smp.service.authentication.AuthService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;



@Controller
@RequestMapping("/login")
public class LoginController {
    
    @Autowired
    AuthService authService;
    
    
    @GetMapping("")
    public String showLoginPage(Model model){
        model.addAttribute("loginDTO", new LoginDTO());
        return "login";
    }

    @PostMapping("")
    public String postMethodName(@Valid @ModelAttribute LoginDTO loginDTO,BindingResult result, HttpSession session) {
        
        if (result.hasErrors()){
            System.out.println(result.getAllErrors());
            return "login";
        }
        
        System.out.println(loginDTO);
        if (authService.authenticate(loginDTO)){
            String role=authService.getUserRole(loginDTO);
            session.setAttribute("userID", loginDTO.getUserID());   
            session.setAttribute("role",role);
            return "redirect:/dashboard";
        }
        
        return "login";
    }
    




    
}
