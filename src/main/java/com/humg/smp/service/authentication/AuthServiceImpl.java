package com.humg.smp.service.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.constant.RoleType;
import com.humg.smp.dto.LoginDTO;
import com.humg.smp.repository.UserRepository;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    UserRepository userRepository;
    
    @Override
    public boolean authenticate(LoginDTO loginDTO) {
        return userRepository.existsById(loginDTO.getUserID()) && userRepository.existsByPassword(loginDTO.getPassword());
    }

    @Override
    public String getUserRole(LoginDTO loginDTO) {
        RoleType roleEnum=userRepository.findByIḍ(loginDTO.getUserID()).get().getRole().getType();
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
