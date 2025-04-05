package com.humg.smp.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.humg.smp.entity.Period;

public interface PeriodRepository extends JpaRepository<Period,Long>{
     @Query("SELECT COUNT(p) FROM Period p")
     Long countAll();

     @Query(value = "SELECT * FROM period ORDER BY RAND() LIMIT 1", nativeQuery = true)
     Period findRandomPeriod();
}
