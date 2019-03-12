package edu.nju.yummy.controller;

import edu.nju.yummy.form.RestaurantRegisterForm;
import edu.nju.yummy.form.UserRegisterForm;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.LogInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class LogInController {

    private final LogInService logInService;

    @Autowired
    public LogInController(LogInService logInService) {
        this.logInService = logInService;
    }

    @PostMapping("/user/register")
    public String userRegister(@Valid UserRegisterForm form, Model model) {
        ResultModel result = logInService.userRegister(form.getEmail(), form.getPassword(), form.getCode());
        model.addAttribute("info", result.getInfo());
        return "register/user";
    }

    @PostMapping("/restaurant/register")
    public String restaurantRegister(@Valid RestaurantRegisterForm form, Model model) {
        ResultModel result = logInService.restaurantRegister(
                form.getName(), form.getPassword(), form.getDescription(), form.getAddress(), form.getPointInput(),
                form.getPhone(), form.getCardNum(), form.getCardPassword());
        model.addAttribute("info", result.getInfo());
        return "register/restaurant";
    }
}
