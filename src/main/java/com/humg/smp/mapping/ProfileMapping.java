package com.humg.smp.mapping;

import com.humg.smp.dto.request.ProfileRequest;

import com.humg.smp.entity.Profile;

public class ProfileMapping {
     public static Profile toEntity(ProfileRequest request) {
        Profile profile = new Profile();
        profile.setIdentityCard(request.getIdentityCard());
        profile.setName(request.getName());
        profile.setDateOfBirth(request.getDateOfBirth());
        profile.setPhone(request.getPhone());
        
        profile.setAddress(request.getAddress());
        profile.setEmail(request.getEmail());


        // Các giá trị mặc định
        profile.setLearnedCredits(0);
        profile.setPaidTuitionFee(0.00);
        profile.setTuitionFee(0.00);
        profile.setDebtTuitionFee(0.00);

        return profile;
    }
}
