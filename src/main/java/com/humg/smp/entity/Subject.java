package com.humg.smp.entity;

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
public class Subject {
    
    @Id
    String subjectID;

    String name;
    int credits;

    @ManyToMany()
    @JoinTable(
        name="term_subject",
        joinColumns = @JoinColumn(name ="subjectID"),
        inverseJoinColumns = @JoinColumn(name = "termID")
    )
    List<Term> terms;

    Long preSubjectID;
    boolean isElective;


    @OneToMany(mappedBy = "subject")
    List<SubjectMajor> subjectMajors;
}
