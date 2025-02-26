package com.humg.smp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



import jakarta.servlet.http.HttpSession;


@Controller
@RequestMapping("/dashboard")
public class DashBoardController {

    @GetMapping("")
    public String getDashBoard(@RequestParam String param, HttpSession session) {
        String role= session.getAttribute("role").toString();
        if ("ADMIN".equals(role)){
            return "redirect:/dashboard/dashboard3_admin";
        }
        else if("GIANG_VIEN".equals(role)){
            return "redirect:/dashboard/dashboard2_GV";
        }
        else if("SINH_VIEN".equals(role)){
            return "redirect:/dashboard/dashboard1";
        }
        else{
            return "redirect:/login";
        }
    }
    

    
}
