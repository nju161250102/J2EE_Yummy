package edu.nju.yummy.controller;

import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.LogInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LogInController {

    private final LogInService logInService;

    @Autowired
    public LogInController(LogInService logInService) {
        this.logInService = logInService;
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request, Model model, HttpSession session) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String type = request.getParameter("type");

        ResultModel result = new ResultModel();
        if ("user".equals(type)) {
            result = logInService.userLogin(username, password);
        } else if ("restaurant".equals(type)) {
            result = logInService.restaurantLogin(username, password);
        } else if ("admin".equals(type)) {
            result = logInService.adminLogin(username, password);
        }
        if (result.isSuccess()) {
            session.setAttribute("id", result.getData());
            return "redirect:" + type + "/index";
        }
        model.addAttribute("info", result.getInfo());
        return "/index";
    }

    @PostMapping("/user/register")
    public String userRegister(HttpServletRequest request, Model model) {
        String email = request.getParameter("mail");
        String password = request.getParameter("password");
        String code = request.getParameter("code");
        ResultModel result = logInService.userRegister(email, password, code);
        model.addAttribute("info", result.getInfo());
        return "register/user";
    }

    @PostMapping("/restaurant/register")
    public String restaurantRegister(HttpServletRequest request, Model model) {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String description = request.getParameter("description");
        String phone = request.getParameter("phone");
        String cardNum = request.getParameter("cardNum");
        String cardPassword = request.getParameter("cardPassword");
        ResultModel result = logInService.restaurantRegister(name, password, description, address, phone, cardNum, cardPassword);
        model.addAttribute("info", result.getInfo());
        return "register/restaurant";
    }
}
