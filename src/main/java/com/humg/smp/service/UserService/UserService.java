package com.humg.smp.service.UserService;

import java.util.List;
import java.util.Optional;

import com.humg.smp.dto.request.LoginDTO;
import com.humg.smp.dto.request.UserRequest;
import com.humg.smp.dto.respone.PageRespone;
import com.humg.smp.dto.respone.UserRespone;
import com.humg.smp.entity.Profile;
import com.humg.smp.entity.User;

public interface UserService {
    User getUser(LoginDTO loginDTO) throws RuntimeException;

    PageRespone<UserRespone> getAllUser(int pageSize,int page) ;

    void createUser(UserRequest userRequest) throws RuntimeException;

    Profile getUserProfileById(Long userId) throws RuntimeException;

    void deleteUser(Long userId);
}

