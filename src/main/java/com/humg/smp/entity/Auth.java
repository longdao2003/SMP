package com.humg.smp.entity;

import java.sql.Timestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "auth")
@Getter
@Setter
public class Auth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    @ManyToOne
    @JoinColumn(name = "menu_id")
    private Menu menu;

    @Column
    private Boolean permission;

    @Column(name = "active_flag")
    private Boolean activeFlag;

    @Column(name = "create_date", updatable = false, insertable = false)
    private Timestamp createDate;

    @Column(name = "update_date", insertable = false)
    private Timestamp updateDate;
}

