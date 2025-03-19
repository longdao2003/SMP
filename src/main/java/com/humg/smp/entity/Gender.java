package com.humg.smp.entity;

import java.util.List;

import com.humg.smp.constant.GenderType;

import jakarta.persistence.*;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "gender")
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Gender {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    Long id;

    @Enumerated(EnumType.STRING)
    GenderType type;

    @OneToMany(mappedBy = "gender")
    List<User> users;
}
