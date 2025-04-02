package com.humg.smp.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.humg.smp.constant.RoleType;
import com.humg.smp.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role,Integer> {

        Role findByCode(RoleType code);
}
