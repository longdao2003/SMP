package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.ClassInfo;

@Repository
public interface ClassInfoRepository extends JpaRepository<ClassInfo,Integer> {
    
}
