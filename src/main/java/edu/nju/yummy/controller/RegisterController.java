package edu.nju.yummy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @RequestMapping("/user")
    public String userPage() {
        return "register/user";
    }

    @RequestMapping("/restaurant")
    public String restaurantPage() {
        return "register/restaurant";
    }

}
