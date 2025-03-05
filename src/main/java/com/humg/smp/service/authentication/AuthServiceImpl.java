package com.humg.smp.service.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.constant.RoleType;
import com.humg.smp.dto.LoginDTO;
import com.humg.smp.dto.respone.Respone;

import com.humg.smp.repository.UserRepository;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    UserRepository userRepository;

    @Override
    public Respone authenticate(LoginDTO loginDTO) {
        List<String> errors = new ArrayList<>();
        if (!userRepository.existsByUserID(loginDTO.getUserID())) {
            errors.add("Mã số sinh viên không tồn tại");
            return Respone.builder()
                    .status(false)
                    .data(errors)
                    .build();
        }
        if (!userRepository.existsByPassword(loginDTO.getPassword())) {
            errors.add("Mật khẩu không đúng");
            return Respone.builder()
                    .status(false)
                    .data(errors)
                    .build();

        }
        return Respone.builder()
                .status(true)
                .build();
    }

    @Override
    public String getUserRole(LoginDTO loginDTO) {
        RoleType roleEnum = userRepository.findByUserID(loginDTO.getUserID()).get().getRole().getType();
        switch (roleEnum) {
            case ADMIN:
                return "ADMIN";

            case GIANG_VIEN:
                return "GIANG_VIEN";

            case SINH_VIEN:
                return "SINH_VIEN";

            default:
                return null;
        }

    }

}
