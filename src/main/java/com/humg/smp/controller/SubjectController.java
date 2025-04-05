package com.humg.smp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.humg.smp.constant.ViewConstants;
import com.humg.smp.dto.request.SubjectRequest;
import com.humg.smp.dto.respone.PageInfo;
import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.entity.Subject;
import com.humg.smp.mapping.PageMapping;
import com.humg.smp.service.subject.SubjectService;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class SubjectController {
    
    @Autowired
    SubjectService subjectService;

    @GetMapping("/subject")
 public String getSubjectPage(
        @RequestParam(defaultValue = "1") int page,
        @RequestParam(defaultValue = "5") int pageSize,
        Model model) {  
        
        model.addAttribute("subjectRequest", new SubjectRequest());
        PageRespone<Subject> pageSubject=subjectService.getSubject(page-1, pageSize);
        PageInfo pageInfo= PageMapping.toInfo(pageSubject);
        model.addAttribute(ViewConstants.LIST_SUBJECT,pageSubject.getContent());
        model.addAttribute(ViewConstants.PAGE_INFO, pageInfo);
        return "subject/subject";
    }

    @PostMapping("/addSubject")
    public String postSubjectst(@ModelAttribute SubjectRequest subjectRequest){
        
        
        return "redirect:/subject";
    }
    
    

    
}
