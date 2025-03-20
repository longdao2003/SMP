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
@Table(name = "major")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Major {
    @Id
    Long id;

    String name;    

    @OneToMany(mappedBy = "major" )
    List<User> users;

    @OneToMany(mappedBy = "major") 
    List<ChildMajor> childMajors;

    @OneToMany(mappedBy = "major")
    List<Class> cLasses;

    @OneToMany(mappedBy = "major")
    List<SubjectMajor> subjectMajors;






}
