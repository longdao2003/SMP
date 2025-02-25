package com.humg.smp.entity;


import java.util.List;

import com.humg.smp.constant.RoleType;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "role")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Role {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
  
    Long id;

    RoleType type;
    
    @OneToMany(mappedBy = "roleID")
    List<User> users;
   
}
