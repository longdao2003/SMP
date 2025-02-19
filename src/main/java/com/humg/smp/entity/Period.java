package com.humg.smp.entity;

import java.time.LocalDate;

import jakarta.persistence.*;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "class")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Period {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    LocalDate starDate;
    LocalDate endDate;
    String name;
}
