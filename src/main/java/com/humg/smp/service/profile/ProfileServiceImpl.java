package com.humg.smp.service.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.humg.smp.dto.request.ProfileRequest;
import com.humg.smp.entity.Major;
import com.humg.smp.entity.Profile;
import com.humg.smp.mapping.ProfileMapping;
import com.humg.smp.repository.ClassInfoRepository;
import com.humg.smp.repository.GenderRepository;
import com.humg.smp.repository.MajorChildRepository;
import com.humg.smp.repository.ProfileRepository;
import com.humg.smp.repository.StatusRepository;

@Service
public class ProfileServiceImpl implements ProfileService {

    @Autowired
    ProfileRepository profileRepository;

    @Autowired
    GenderRepository genderRepository;

    @Autowired
    StatusRepository statusRepository;

    @Autowired
    MajorChildRepository majorChildRepository;

    @Autowired
    ClassInfoRepository classInfoRepository;
    
    @Override
    public Profile getProfileByCitizenId(String citizenId) throws RuntimeException {
        return profileRepository.findById(citizenId).orElseThrow(() -> new RuntimeException("Không có dữ liệu"));
    }

    @Override
    public void updateProfile(ProfileRequest profileRequest) {
        Profile p=ProfileMapping.toEntity(profileRequest);
        p.setGender(genderRepository.findByCode(profileRequest.getGenderCode()));
        p.setMajorChild(majorChildRepository.findById(profileRequest.getMajorChildId()).get());
        p.setClassInfo(classInfoRepository.findById(profileRequest.getClassInfoId()).get());
        profileRepository.save(p);
        throw new UnsupportedOperationException("Unimplemented method 'updateProfile'");
    }
    
}
