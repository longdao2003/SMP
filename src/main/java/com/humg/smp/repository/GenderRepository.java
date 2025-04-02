package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.Gender;

@Repository
public interface GenderRepository extends JpaRepository<Gender,Integer> {


    
}
