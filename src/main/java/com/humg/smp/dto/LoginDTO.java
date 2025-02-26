package com.humg.smp.dto;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.processing.Pattern;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
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
    @NotNull(message ="Mật khẩu không được để trống")  
    private String password;   
}
