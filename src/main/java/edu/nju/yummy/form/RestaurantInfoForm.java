package edu.nju.yummy.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class RestaurantInfoForm {
    @NotBlank
    private String name;
    @NotBlank
    private String phone;
    @NotBlank
    private String address;
    @NotBlank
    private String description;
}
