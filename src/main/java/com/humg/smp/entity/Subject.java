package com.humg.smp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Integer id;

    private String name;
    private Integer credits;

    @ManyToOne
    @JoinColumn(name = "major_id")
    private MajorChild majorChild;

    @ManyToOne
    @JoinColumn(name = "term_year_id")
    private Term term;

    // Getters and setters
}
