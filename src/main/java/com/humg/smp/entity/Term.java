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

@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Term {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    Long id;

    LocalDate startDate;
    LocalDate endDate;
    char termNumber;

    @ManyToMany(mappedBy = "terms")
    List<Subject> subjects;

    @ManyToOne
    @JoinColumn(name="yearID")
    SchoolYear schoolYear;
}
