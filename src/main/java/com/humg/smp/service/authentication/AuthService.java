package com.humg.smp.service.authentication;

import com.humg.smp.dto.LoginDTO;

public interface AuthService {
    public boolean authenticate(LoginDTO loginDTO);

    public String getUserRole(LoginDTO loginDTO);
    
} 
