package com.humg.smp.entity;

import com.humg.smp.constant.GenderType;

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
