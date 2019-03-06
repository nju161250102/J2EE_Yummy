package edu.nju.yummy.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class DishForm {
    @NotBlank
    private String name;
    @NotBlank
    private double price;
    @NotBlank
    private int num;
    @NotBlank
    private String startDate;
    @NotBlank
    private String endDate;
    @NotBlank
    private String type;
}
