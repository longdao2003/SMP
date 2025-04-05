package com.humg.smp.constant;

public enum WeekDaysType {
    MONDAY("Thứ Hai"),
    TUESDAY("Thứ Ba"),
    WEDNESDAY("Thứ Tư"),
    THURSDAY("Thứ Năm"),
    FRIDAY("Thứ Sáu"),
    SATURDAY("Thứ Bảy");

    private final String name;

    // Constructor
    WeekDaysType(String name) {
        this.name = name;
    }

    // Getter
    public String getname() {
        return name;
    }

}
