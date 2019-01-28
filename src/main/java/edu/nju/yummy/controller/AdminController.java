package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSONArray;
import edu.nju.yummy.service.RestaurantService;
import edu.nju.yummy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private UserService userService;

    @GetMapping("/index")
    public String getIndexPage(Model model) {
        JSONArray array = restaurantService.getUncheckedList();
        model.addAttribute("data", array.toJSONString());
        return "admin/index";
    }

    @PostMapping("/check")
    public String getIndexPage(HttpServletRequest request, Model model) {
        String[] checkList = request.getParameterValues("checkList");
        for (String id: checkList) {
            restaurantService.check(id, true);
        }
        return "redirect:/admin/index";
    }
}
