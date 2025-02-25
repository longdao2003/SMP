package com.humg.smp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.humg.smp.entity.User;

public interface UserRepository extends JpaRepository<Long,User> {

    boolean existsById(Long userID);

    boolean existsByPassword(String password);

    Optional<User> findByIḍ(Long userID);
} 
