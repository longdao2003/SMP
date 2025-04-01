package com.humg.smp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Score {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Float C;
    private Float B;
    private Float A;
    private Float average;

    @ManyToOne
    @JoinColumn(name = "term_id")
    private Term term;

    @ManyToOne
    @JoinColumn(name = "subject_id")
    private Subject subject;

    // Getters and setters
}
