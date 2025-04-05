package com.humg.smp.dto.request;

import java.sql.Date;

import com.humg.smp.constant.GenderType;
import com.humg.smp.constant.StatusType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProfileRequest {
    
    private String identityCard;



    private String name;


    private Date dateOfBirth;

    private String phone;
    
    private GenderType genderCode;

    private String address;

    private StatusType statusCode;

    
    private String email;


    private Long majorChildId;

    private Long classInfoId;
}