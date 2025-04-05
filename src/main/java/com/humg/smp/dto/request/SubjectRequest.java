package com.humg.smp.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class SubjectRequest {
    
    private String id;

    private String name;
    private Integer credits;
    private Integer majorId;
}
