package edu.nju.yummy.controller;

import edu.nju.yummy.service.DishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/dishItem")
public class DishItemController {

    private final DishService dishService;

    @Autowired
    public DishItemController(DishService dishService) {
        this.dishService = dishService;
    }

    @PostMapping("/add")
    public String addDishItem(HttpServletRequest request, HttpSession session) {
        int dishId = (int) session.getAttribute("dishId");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String num = request.getParameter("num");
        dishService.addDishItem(dishId, name, Double.parseDouble(price), Integer.parseInt(num));
        return "redirect:/dish/info/" + dishId;
    }

    @RequestMapping("/delete/{id}")
    public String deleteItem(@PathVariable("id") int id, HttpSession session) {
        dishService.deleteDishItem(id);
        int dishId = (int) session.getAttribute("dishId");
        return "redirect:/dish/info/" + dishId;
    }
}
