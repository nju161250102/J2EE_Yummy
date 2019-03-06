package edu.nju.yummy;

import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.util.LinkedList;
import java.util.List;

@ControllerAdvice
public class CommonExceptionHandler {

    @ExceptionHandler(BindException.class)
    public String handleBindException(BindException e, Model model) {

        List<FieldError> fieldErrors = e.getBindingResult().getFieldErrors();
        List<String> errorMsgs = new LinkedList<>();
        for (FieldError error: fieldErrors) {
            errorMsgs.add(error.getDefaultMessage());
        }
        model.addAttribute("infos", errorMsgs);
        return "/error";
    }
}
