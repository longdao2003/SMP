package com.humg.smp.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class LoginDTO {

    @NotNull(message = "Mã sinh viên không được để trống")
    private Long userID;
    @NotBlank(message = "Mật khẩu không được để trống")
    private String password;
}
