package com.humg.smp.dto.request;


import com.humg.smp.constant.RoleType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserRequest {

    private Long id;
    private String name;
    private RoleType codeRole;   
    private Boolean activeFlag;

    private String identi_card;

}
