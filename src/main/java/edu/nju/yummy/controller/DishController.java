package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.service.DishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/dish")
public class DishController {

    private final DishService dishService;

    @Autowired
    public DishController(DishService dishService) {
        this.dishService = dishService;
    }

    @PostMapping("/add")
    public String addDish(HttpServletRequest request, HttpSession session) {
        int restId = (int) session.getAttribute("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String num = request.getParameter("num");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String type = request.getParameter("type");
        dishService.addDish(restId, name, startDate, endDate, price == null ? null : Double.parseDouble(price), Integer.parseInt(num), "package".equals(type));
        return "redirect:/restaurant/index";
    }

    @GetMapping("/info/{id}")
    public String getDishInfo(@PathVariable("id")int id, Model model, HttpSession session) {
        JSONObject dish = dishService.getDish(id);
        if (dish.getInteger("hasItem") == 1 && dish.getInteger("price") == 0) {
            model.addAttribute("edit", true);
        } else {
            model.addAttribute("edit", false);
        }
        JSONArray items = dishService.getDishItems(id);
        model.addAttribute("itemList", items.toJSONString());
        session.setAttribute("dishId", id);
        return "/dish/info";
    }

    @GetMapping("/finish")
    public String finishDish(HttpSession session) {
        int dishId = (int) session.getAttribute("dishId");
        dishService.finishDishPackage(dishId);
        return "redirect:/restaurant/index";
    }
}
