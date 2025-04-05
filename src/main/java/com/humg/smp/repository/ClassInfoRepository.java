package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.ClassInfo;

@Repository
public interface ClassInfoRepository extends JpaRepository<ClassInfo,Long> {
    @Query(value = "SELECT * FROM class_info ORDER BY RAND() LIMIT 1", nativeQuery = true)
    ClassInfo findRandomClassInfo();


    
}
