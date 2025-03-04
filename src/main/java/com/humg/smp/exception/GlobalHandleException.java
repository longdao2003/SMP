package com.humg.smp.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalHandleException {
    @ExceptionHandler(DataError.class)
    public ModelAndView handleGlobalException(Exception ex) {
        String[] text = ex.getMessage().split(":");
        ModelAndView modelAndView = new ModelAndView(text[0]);
        modelAndView.addObject("errorMessage", text[1]);
        return modelAndView;
    }
}
