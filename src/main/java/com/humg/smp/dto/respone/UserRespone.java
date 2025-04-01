package com.humg.smp.dto.respone;

import com.humg.smp.entity.Profile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserRespone {
    private Long id;
    private String name;
    private String role;
    private Boolean activeFlag;
    private Profile profile;
}
