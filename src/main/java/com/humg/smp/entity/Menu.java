package com.humg.smp.entity;

import java.sql.Timestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "menu")
@Getter
@Setter
@ToString
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "parent_id")
    private Integer parent;

    @Column(length = 100)
    private String url;

    @Column(length = 100)
    private String name;

    @Column(name = "order_index")
    private Integer orderIndex;

    @Column(name = "active_flag")
    private Boolean activeFlag;

    @Column(name = "create_date", updatable = false, insertable = false)
    private Timestamp createDate;

    @Column(name = "update_date", insertable = false)
    private Timestamp updateDate;
}
