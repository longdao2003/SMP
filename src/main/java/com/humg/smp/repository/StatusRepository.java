package com.humg.smp.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.Status;

@Repository
public interface StatusRepository extends JpaRepository<Status,Long> {
    
}
