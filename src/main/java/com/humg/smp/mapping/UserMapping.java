package com.humg.smp.mapping;

import com.humg.smp.dto.request.UserRequest;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.User;

public class UserMapping {
    public static UserRespone toRespone(User u){
        return UserRespone.builder()
        .id(u.getId())
        .name(u.getProfile().getName())
        .role(u.getUserRoles().iterator().next().getRole().getRoleName())
        .activeFlag(u.getActiveFlag())
        .build();
    }

    public static User toEntity(UserRequest userRequest){
        User u= new User();
        u.setId(userRequest.getId());
        u.getProfile().setName(userRequest.getName());
        
        
        return u;
     }
}
