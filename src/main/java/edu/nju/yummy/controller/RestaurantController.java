package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SimpleDateFormatSerializer;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.Timestamp;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

    private final SerializeConfig mapping = new SerializeConfig();
    private final LogInService logInService;
    private final RestaurantService restaurantService;
    private final DishService dishService;
    private final OrderService orderService;
    @Autowired
    private StatisticService statisticService;

    @Autowired
    public RestaurantController(RestaurantService restaurantService, LogInService logInService, DishService dishService, OrderService orderService) {
        this.restaurantService = restaurantService;
        this.logInService = logInService;
        this.dishService = dishService;
        this.orderService = orderService;
        mapping.put(Date.class, new SimpleDateFormatSerializer("yyyy-MM-dd"));
        mapping.put(Timestamp.class, new SimpleDateFormatSerializer("yyyy-MM-dd HH:mm:ss"));
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

    @GetMapping("/record")
    public String getRecordPage(Model model, HttpSession session) {
        int id = (int) session.getAttribute("id");
        JSONArray orders = orderService.getOrderList(2, id, "all");
        model.addAttribute("orderJson", JSONArray.toJSONString(orders, mapping));
        return "restaurant/record";
    }

    @GetMapping("/statistic")
    public String getStatisticPage() {
        return "restaurant/statistic";
    }

    @PostMapping("/statistic")
    public String getStatistic(Model model, HttpSession session, HttpServletRequest request) {
        int restId = (int) session.getAttribute("id");
        String start = request.getParameter("startDate");
        String end = request.getParameter("endDate");
        JSONArray result = statisticService.getRestaurantStatistics(restId, start, end);
        model.addAttribute("result", result.toString());
        return "restaurant/statistic";
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
