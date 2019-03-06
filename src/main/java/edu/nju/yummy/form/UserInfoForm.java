package edu.nju.yummy.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class UserInfoForm {
    @NotBlank
    private String name;
    @NotBlank
    private String phone;
    @NotBlank
    private String cardNum;
    @NotBlank
    private String cardPassword;
}
