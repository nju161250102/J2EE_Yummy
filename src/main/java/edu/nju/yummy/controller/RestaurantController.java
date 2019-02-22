package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SimpleDateFormatSerializer;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.DishService;
import edu.nju.yummy.service.LogInService;
import edu.nju.yummy.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Date;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

    private final SerializeConfig mapping = new SerializeConfig();
    private final LogInService logInService;
    private final RestaurantService restaurantService;
    private final DishService dishService;

    @Autowired
    public RestaurantController(RestaurantService restaurantService, LogInService logInService, DishService dishService) {
        this.restaurantService = restaurantService;
        this.logInService = logInService;
        this.dishService = dishService;
        mapping.put(Date.class, new SimpleDateFormatSerializer("yyyy-MM-dd"));
    }

    @GetMapping("/index")
    public String getIndexPage(Model model, HttpSession session) {
        int id = (int) session.getAttribute("id");
        JSONArray result = dishService.getAllDishes(id);
        model.addAttribute("dishList", JSONArray.toJSONString(result, mapping));
        return "restaurant/index";
    }

    @GetMapping("/info")
    public String getInfoPage(Model model, HttpSession session) {
        int id = (int) session.getAttribute("id");
        JSONObject restaurant = restaurantService.getInfo(id);
        model.addAttribute("restaurantInfo", restaurant.toJSONString());
        return "restaurant/info";
    }

    @PostMapping("/update")
    public String updateInfo(HttpServletRequest request, HttpSession session) {
        int id = (int) session.getAttribute("id");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String description = request.getParameter("description");
        ResultModel result = restaurantService.updateInfo(id, name, address, description, phone);
        return "redirect:/restaurant/info";
    }

    @PostMapping("/cancelUpdate")
    public String cancelUpdate(HttpSession session) {
        int id = (int) session.getAttribute("id");
        restaurantService.cancelUpdate(id);
        return "redirect:/restaurant/info";
    }

    @PostMapping("/changePassword")
    public String changePassword(HttpServletRequest request, HttpSession session) {
        int id = (int) session.getAttribute("id");
        String newPassword = request.getParameter("newPassword");
        String oldPassword = request.getParameter("oldPassword");
        logInService.restaurantChangeKey(id, oldPassword, newPassword);
        return "redirect:/restaurant/info";
    }
}
