package com.humg.smp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class TimetableType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Integer id;

    @Enumerated(EnumType.STRING)
    private com.humg.smp.constant.TimetableType code;

    private String name;

    // Getters and setters


}
