package com.humg.smp.entity;

import java.time.LocalDate;
import java.util.List;

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
public class SchoolYear {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    LocalDate startDate;
    LocalDate endDate;
    String name;

    @OneToMany(mappedBy = "schoolYear")
    List<Term> terms;
}
