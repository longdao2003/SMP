package com.humg.smp.entity;

import com.humg.smp.constant.GenderType;
import com.humg.smp.constant.RoleType;

import jakarta.persistence.*;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "gender")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Gender {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
  
    Long id;
    GenderType type;
}
