package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.humg.smp.entity.UserRole;

public interface UserRoleRepository  extends JpaRepository<UserRole,Long>{
    
}
