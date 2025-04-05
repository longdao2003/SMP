package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.WeekDays;

@Repository
public interface WeeksDaysRepository extends JpaRepository<WeekDays,Long> {


    @Query(value = "SELECT * FROM week_days ORDER BY RAND() LIMIT 1", nativeQuery = true)
    WeekDays findRandomWeeksDays();
}
