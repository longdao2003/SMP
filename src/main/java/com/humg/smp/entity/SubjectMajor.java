package com.humg.smp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "subject_major")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class SubjectMajor {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    Long id;

    @ManyToOne()
    @JoinColumn(name="majorID")
    Major major;

    @ManyToOne()
    @JoinColumn(name ="subjectID")
    Subject subject;
}
