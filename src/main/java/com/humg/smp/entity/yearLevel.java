package com.humg.smp.entity;

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
public class yearLevel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    String levelName;
    byte levelOrder;
}
