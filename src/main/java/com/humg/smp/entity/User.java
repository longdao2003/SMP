package com.humg.smp.entity;

import java.sql.Timestamp;

import jakarta.persistence.Entity;

import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
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
    Long userID;

    @ManyToOne
    @JoinColumn(name = "roleID")
    Role role;

    String password;
    String identityCard;
    String name;
    Timestamp dateOfBirth;
    String phone;
    
    @ManyToOne
    @JoinColumn(name="genderID")
    Gender gender;
    
    
    
    String address;
    
    @ManyToOne
    @JoinColumn(name="statusID")
    Status status;

    @OneToOne
    @JoinColumn(name="teacherID", referencedColumnName = "userID", insertable = false, updatable = false )
    User teacher;
    String email;
    
    @ManyToOne
    @JoinColumn(name="majorID")
    Major major;

    @ManyToOne
    @JoinColumn(name="classID")
    Class cLass;


    int learnedCredits;
    Long paidTutionFee;
    Long tutionFee;
    Long debtTutionFee;
}
