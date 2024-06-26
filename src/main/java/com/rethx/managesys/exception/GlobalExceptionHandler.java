package com.rethx.managesys.exception;

import com.rethx.managesys.common.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(ServiceException.class)
    @ResponseBody
    public Result handleException(ServiceException se){
        return Result.error(se.getCode(),se.getMessage());
    }
}
