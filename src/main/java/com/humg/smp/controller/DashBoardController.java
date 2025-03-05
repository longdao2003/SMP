package com.humg.smp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/dashboard")
public class DashBoardController {

    @GetMapping("")
    public String getDashBoard(HttpSession session) {
        String role = session.getAttribute("role").toString();
        if ("ADMIN".equals(role)) {
            return "dashboard3_admin";
        } else if ("GIANG_VIEN".equals(role)) {
            return "dashboard2_GV";
        } else if ("SINH_VIEN".equals(role)) {
            return "dashboard1";
        } else {
            return "login";
        }
    }

}
