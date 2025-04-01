package com.humg.smp.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserRequest {
    Long id;
    String name;
    String codeRole;
    String email;
    Boolean activeFlag;

    

}
