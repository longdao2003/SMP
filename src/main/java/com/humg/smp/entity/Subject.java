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
public class Subject {
    
    @Id
    String subjectID;

    String name;
    int credits;

    Long yearaLevelID;

    String preSubjectID;
    boolean isElective;
}
