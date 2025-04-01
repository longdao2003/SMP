package com.humg.smp.service.UserService;

import java.util.List;

import com.humg.smp.dto.request.LoginDTO;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.User;

public interface UserService {
    User getUser(LoginDTO loginDTO) throws RuntimeException;

    List<UserRespone> getAllUser() ;
}

