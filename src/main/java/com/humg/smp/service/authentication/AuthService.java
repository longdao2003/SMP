package com.humg.smp.service.authentication;

import com.humg.smp.dto.LoginDTO;
import com.humg.smp.dto.respone.Respone;

public interface AuthService {
    public Respone authenticate(LoginDTO loginDTO);

    public String getUserRole(LoginDTO loginDTO);

}
