package com.humg.smp.constant;
public enum StatusType {
    DANG_HOC("Đang học"),
    BO_HOC("Bỏ học"),
    LUU_BAN("Lưu ban");

   
    private final String name;

    StatusType(String name) {
        this.name = name;
    }



    public String getName() {
        return this.name;
    }
   
}
