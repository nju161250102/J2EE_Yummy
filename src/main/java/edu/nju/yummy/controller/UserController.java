package edu.nju.yummy.controller;

import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.LogInService;
import edu.nju.yummy.service.UserService;
import edu.nju.yummy.service.VCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private LogInService logInService;
    @Autowired
    private VCodeService vCodeService;

    @PostMapping("/register")
    public String register(HttpServletRequest request, Model model) {
        String email = request.getParameter("mail");
        String password = request.getParameter("password");
        String code = request.getParameter("code");
        ResultModel result = logInService.userRegister(email, password, code);
        model.addAttribute("info", result.getInfo());
        return "register/user";
    }

    @ResponseBody
    @PostMapping("/code")
    public String getCode(@ModelAttribute("mail")String email) {
        ResultModel result = vCodeService.sendCode(email);
        return result.getInfo();
    }
}
