package com.humg.smp.entity;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Table(name = "users")
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String userName;
    private String password;
    private String email;

    private Boolean activeFlag = true;

    @ManyToOne
    @JoinColumn(name = "profile_id")
    private Profile profile;

    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime createDate ;

    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime updateDate ;

    @OneToMany(mappedBy = "user")
    List<UserRole> userRoles;
}