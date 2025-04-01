package com.humg.smp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Room {

    @Id
    private String name;

    private Integer capacity;
    private Boolean isAllowed;

    // Getters and setters
}