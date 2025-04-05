package com.humg.smp.service.profile;

import com.humg.smp.dto.request.ProfileRequest;
import com.humg.smp.entity.Profile;

public interface ProfileService {

    Profile getProfileByCitizenId(String citizenId) throws RuntimeException;
    
    void updateProfile(ProfileRequest profileRequest);
} 
