package com.humg.smp.constant;
public enum GenderType {
    NAM("Nam"),
    NU("Nữ"),
    KHONG_XAC_DINH("Bê đê");


    private final String name;

    GenderType(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
}
