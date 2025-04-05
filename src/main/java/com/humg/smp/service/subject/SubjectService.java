package com.humg.smp.service.subject;

import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.entity.Subject;

public interface SubjectService {
    

    PageRespone<Subject> getSubject(int page, int pageSize);
}
