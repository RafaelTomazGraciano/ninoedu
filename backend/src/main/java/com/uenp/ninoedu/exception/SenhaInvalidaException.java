package com.uenp.ninoedu.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class SenhaInvalidaException extends RuntimeException{

    public SenhaInvalidaException(String message) {
        super(message);
    }

}
