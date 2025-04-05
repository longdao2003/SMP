package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.humg.smp.entity.Term;

public interface TermRepository extends JpaRepository<Term,Long> {
    
    @Query(value = "SELECT * FROM term ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Term findRandomTerm();
}
