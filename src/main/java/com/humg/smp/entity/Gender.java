package com.humg.smp.entity;


import com.humg.smp.constant.GenderType;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "gender")

public class Gender {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Enumerated(EnumType.STRING)    
    private GenderType code;

    
    private String name;

    @Override
    public String toString() {
        return this.name;
    }
}
