package edu.nju.yummy.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class RestaurantRegisterForm {
    @NotBlank(message = "餐厅名称不能为空")
    private String name;
    @NotBlank(message = "密码不能为空")
    private String password;
    @NotBlank(message = "地址不能为空")
    private String address;
    @NotBlank(message = "")
    private String pointInput;
    private String description;
    @NotBlank(message = "电话不能为空")
    private String phone;
    @NotBlank(message = "绑定的账户卡号不能为空")
    private String cardNum;
    @NotBlank(message = "请填写账户密码")
    private String cardPassword;
}
