
package com.humg.smp.entity;
import java.sql.Timestamp;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "role")
@Getter
@Setter
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "role_name", nullable = false, length = 50)
    private String roleName;

    @Column(length = 100)
    private String description;

    @Column(name = "active_flag")
    private Boolean activeFlag;

    @Column(name = "create_date", updatable = false, insertable = false)
    private Timestamp createDate;

    @Column(name = "update_date", insertable = false)
    private Timestamp updateDate;

    @OneToMany(mappedBy = "role")
    private Set<Auth> auths; 

}
