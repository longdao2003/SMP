package com.humg.smp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.humg.smp.entity.Room;

public interface RoomRepository extends JpaRepository<Room,String> {
    
    @Query(value = "SELECT * FROM  room ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Room findRandomRoom();
}
