package com.humg.smp.entity;

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
public class ChildMajor {
    @Id
    String childMajorID;

    String name;
}
