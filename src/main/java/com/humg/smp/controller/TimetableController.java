package com.humg.smp.controller;
import com.humg.smp.service.timetable.TimeTableService;
import com.humg.smp.service.timetable.TimeTableServiceImpl;

import ch.qos.logback.core.model.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class TimetableController {

    @Autowired
   TimeTableService timeTableService;


    @GetMapping("/xemthoikhoabieu")
    public String getLichDangDay() {
        return "timetable/lichdangday";
    }
    @GetMapping("/timetable")
    public String getTimetableView(org.springframework.ui.Model m) {

        // timeTableService.generateTimeTableInTerm(1L);

        m.addAttribute("listTimeTable",timeTableService.getAllTimeTableInTerm(1L));
        return "timetable/timetable";
    }

    @GetMapping("/test")
    public String getMethodName(@RequestParam String param) {
        // System.out.println(timeTableService.test());
        return "test";
    }
    
    
}
