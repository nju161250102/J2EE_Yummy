package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.service.RestaurantService;
import edu.nju.yummy.service.StatisticService;
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

    private final RestaurantService restaurantService;
    private final StatisticService statisticService;

    @Autowired
    public AdminController(RestaurantService restaurantService, StatisticService statisticService) {
        this.restaurantService = restaurantService;
        this.statisticService = statisticService;
    }

    @GetMapping("/index")
    public String getIndexPage(Model model) {
        JSONArray array = restaurantService.getUncheckedList();
        model.addAttribute("data", array.toJSONString());
        return "admin/index";
    }

    @GetMapping("/statistic")
    public String getStatisticPage(Model model) {
        JSONObject result =  statisticService.getAdminStatistic();
        model.addAttribute("result", result.toString());
        return "admin/statistic";
    }

    @GetMapping("/settle")
    public String getSettlePage() {
        return "admin/settle";
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
