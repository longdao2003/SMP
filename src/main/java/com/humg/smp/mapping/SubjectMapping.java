package com.humg.smp.mapping;

import com.humg.smp.dto.request.SubjectRequest;
import com.humg.smp.entity.Subject;

public class SubjectMapping {
    public static Subject toEntity(SubjectRequest request) {
        if (request == null) {
            return null;
        }
    
        Subject subject = new Subject();
        subject.setId(Long.parseLong(request.getId()) );
        subject.setName(request.getName());
        subject.setCredits(request.getCredits());
        return subject;
    }
}
