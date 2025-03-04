package com.humg.smp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    boolean existsByUserID(Long userID);

    boolean existsByPassword(String password);

    Optional<User> findByUserID(Long userID);
}
