package com.uenp.ninoedu.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@AllArgsConstructor
@Getter
@Setter
public class RestExceptionPattern {
    private HttpStatus status;
    private String message;
}
