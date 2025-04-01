package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.humg.smp.entity.Profile;

public interface ProfileRepository  extends JpaRepository<Profile,String>{
} 
