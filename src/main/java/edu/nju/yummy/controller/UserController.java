package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService userService;
    private final RestaurantService restaurantService;
    private final VCodeService vCodeService;
    private final AddressService addressService;
    private final DishService dishService;
    private final StatisticService statisticService;

    @Autowired
    public UserController(UserService userService, VCodeService vCodeService, RestaurantService restaurantService, AddressService addressService, DishService dishService, StatisticService statisticService) {
        this.userService = userService;
        this.vCodeService = vCodeService;
        this.restaurantService = restaurantService;
        this.addressService = addressService;
        this.dishService = dishService;
        this.statisticService = statisticService;
    }

    @ResponseBody
    @PostMapping("/code")
    public String getCode(@ModelAttribute("mail")String email) {
        ResultModel result = vCodeService.sendCode(email);
        return result.getInfo();
    }

    @GetMapping("/index")
    public String getIndexPage(Model model) {
        JSONArray list = restaurantService.getAvailableList();
        model.addAttribute("data", list.toJSONString());
        return "user/index";
    }

    @GetMapping("/info")
    public String getInfoPage(Model model, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        JSONObject user = userService.getUser(userId);
        model.addAttribute("userInfo", user.toJSONString());
        JSONArray address = addressService.getAddressList(userId);
        model.addAttribute("userAddress", address.toJSONString());
        return "user/info";
    }

    @GetMapping("/record")
    public String getRecordPage() {
        return "user/record";
    }

    @GetMapping("/order")
    public String getOrderPage() {
        return "user/order";
    }

    @PostMapping("/update")
    public String updateInfo(Model model, HttpServletRequest request, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String cardNum = request.getParameter("cardNum");
        String cardPassword = request.getParameter("cardPassword");
        ResultModel result = userService.updateInfo(userId, name, phone, cardNum, cardPassword);
        model.addAttribute("info", result.getData());
        return "redirect:/user/info";
    }

    @GetMapping("/restaurant/{id}")
    public String enterRestaurant(@PathVariable("id") int id, Model model, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        JSONArray results = dishService.getAvailableDish(id);
        model.addAttribute("dishList", results.toString());
        JSONObject restaurant = restaurantService.getCheckedInfo(id);
        model.addAttribute("restaurant", restaurant.toString());
        JSONArray addresses = addressService.getAddressList(userId);
        model.addAttribute("addressJson", addresses.toString());
        return "user/restaurant";
    }

    @PostMapping("/record")
    public String searchRecord(HttpServletRequest request, Model model, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        String start = request.getParameter("startDate");
        String end = request.getParameter("endDate");
        JSONArray result = statisticService.getUserStatistics(userId, start, end);
        model.addAttribute("result", result.toString());
        return "user/record";
    }

    @GetMapping("/delete")
    public String deleteUser(HttpSession session) {
        int userId = (int) session.getAttribute("id");
        userService.delete(userId);
        session.removeAttribute("id");
        return "redirect:/index";
    }
}
