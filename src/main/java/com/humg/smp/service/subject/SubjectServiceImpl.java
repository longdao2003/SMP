package com.humg.smp.service.subject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.entity.Subject;

import com.humg.smp.repository.SubjectRepository;

@Service
public class SubjectServiceImpl  implements SubjectService{

    @Autowired
    SubjectRepository subjectRepository;

    @Override
    public PageRespone<Subject> getSubject(int page, int pageSize) {
        

        Pageable pageable = PageRequest.of(page, pageSize);
        Page<Subject> subjectPage=subjectRepository.findAll(pageable);
        List<Subject> subjects = subjectPage.getContent();

        return new PageRespone<Subject>(subjects , subjectPage.getTotalPages() , pageSize, page, subjectPage.getSize());        
    }
    
}
