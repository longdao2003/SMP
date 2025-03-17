package com.humg.smp.dto.respone;

import java.sql.Timestamp;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

public class UserRespone {
    Long userID;

    String address;

    String password;
    String identityCard;
    String name;
    Timestamp dateOfBirth;
    String phone;
    String gender;
   
    String email;

}


