package com.humg.smp.entity;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Entity
@Data
public class Profile {

    @Id
    private String identityCard;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    @ManyToOne
    @JoinColumn(name = "score_id")
    private Score score;

    private String image;
    private String name;

    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;

    private String phone;
    
    @ManyToOne
    @JoinColumn(name = "gender_id")
    private Gender gender;

    private String address;

    @ManyToOne
    @JoinColumn(name = "status_id")
    private Status status;

    private Integer teacherId;
    private String email;

    @ManyToOne
    @JoinColumn(name = "major_id")
    private MajorChild majorChild;

    @ManyToOne
    @JoinColumn(name = "class_info_id")
    private ClassInfo classInfo;

    private Integer learnedCredits = 0;
    private Double paidTuitionFee = 0.00;
    private Double tuitionFee = 0.00;
    private Double debtTuitionFee = 0.00;

    // Getters and setters
}
