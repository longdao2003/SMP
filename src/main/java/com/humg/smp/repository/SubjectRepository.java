package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.humg.smp.entity.Subject;

@Repository
public interface SubjectRepository extends JpaRepository<Subject,Long> {
    @Query("SELECT COUNT(s) FROM Subject s")
    long countAll();


    @Query(value = "SELECT * FROM subject ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Subject findRandomSubject();
}
