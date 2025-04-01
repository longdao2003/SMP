package com.humg.smp.service.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.entity.Profile;
import com.humg.smp.repository.ProfileRepository;

@Service
public class ProfileServiceImpl implements ProfileService {

    @Autowired
    ProfileRepository profileRepository;

    @Override
    public Profile getProfileByCitizenId(String citizenId) throws RuntimeException {
        return profileRepository.findById(citizenId).orElseThrow(() -> new RuntimeException("Không có dữ liệu"));
    }
    
}
