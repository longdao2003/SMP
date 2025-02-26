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


    @NotEmpty  
    @Size(min = 6, max = 12, message = "The number must be between 6 and 12 characters.")
    private Long userID;
    @NotEmpty  
    private String password;   
}
