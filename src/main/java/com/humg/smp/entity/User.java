package com.humg.smp.entity;

import java.sql.Timestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userID;
    private Long roleID;
    private String password;
    private String identityCard;
    private String name;
    private Timestamp dateOfBirth;
    private String phone;
    private Long genderID;
    private String address;
    private Long statusID;
    private Long teacherID;
    private String email;
    private Long majorID;
    private Long classID;
    private int learnedCredits;
    private Long paidTutionFee;
    private Long tutionFee;
    private  Long debtTutionFee;
}
