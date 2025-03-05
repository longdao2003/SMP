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
@Table(name = "major")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Term {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    Long id;

    Long yearId;
    LocalDate startDate;
    LocalDate endDate;
    char termNumber;
}
