package com.humg.smp.constant;

public enum RoleType {
    ADMIN("Admin"),
    GIANG_VIEN("Giảng viên"),
    SINH_VIEN("Sinh viên");

    private final String name;

    RoleType(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
   
}
