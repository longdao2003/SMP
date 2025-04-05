package com.humg.smp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.humg.smp.entity.Timetable;

public interface TimeTableRepository extends JpaRepository<Timetable,Long> {
    boolean existsByCode(String code);

    List<Timetable> findByTermId(Long termId);

}
