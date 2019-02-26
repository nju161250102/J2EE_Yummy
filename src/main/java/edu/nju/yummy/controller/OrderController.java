package edu.nju.yummy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SimpleDateFormatSerializer;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {

    private final SerializeConfig mapping = new SerializeConfig();
    private final OrderService orderService;

    @Autowired
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
        mapping.put(Timestamp.class, new SimpleDateFormatSerializer("yyyy-MM-dd HH:mm:ss"));
    }

    @PostMapping("/getAll")
    public String getAllOrders(Model model, HttpServletRequest request, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        String type = request.getParameter("type");
        JSONArray orders = orderService.getOrderList(1, userId, type);
        model.addAttribute("orderJson", JSONArray.toJSONString(orders, mapping));
        return "user/order";
    }

    @PostMapping("/add")
    public String addOrder(HttpServletRequest request, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        int restId = 0;
        int addressId = 0;
        String remark = "";
        Enumeration<String> paramEnum = request.getParameterNames();
        Map<Integer, Integer> orderMap = new HashMap<>();
        while (paramEnum.hasMoreElements()) {
            String paramName = paramEnum.nextElement();
            String param = request.getParameter(paramName);
            if ("restId".equals(paramName)) {
                restId = Integer.parseInt(param);
            } else if ("remark".equals(paramName)) {
                remark = param;
            } else if ("address".equals(paramName)) {
                addressId = Integer.parseInt(param);
            } else {
                if (Integer.parseInt(param) != 0) {
                    orderMap.put(Integer.parseInt(paramName), Integer.parseInt(param));
                }
            }
        }
        int orderId = orderService.addOrder(userId, restId, addressId, remark, orderMap);
        return "redirect:/order/info/" + orderId;
    }

    @GetMapping("/info/{id}")
    public String getOrderInfo(@PathVariable("id")int orderId, Model model) {
        JSONObject order = orderService.getOrder(orderId);
        model.addAttribute("orderJson", JSONObject.toJSONString(order, mapping));
        return "order/info";
    }

    @PostMapping("/pay/{id}")
    public String payOrder(@PathVariable("id") int orderId, Model model, HttpServletRequest request) {
        String password = request.getParameter("password");
        ResultModel result = orderService.payOrder(orderId, password);
        model.addAttribute("resultJson", JSON.toJSONString(result));
        return "order/result";
    }

    @GetMapping("/cancel/{id}")
    public String cancelOrder(@PathVariable("id") int orderId) {
        orderService.cancelOrder(orderId);
        return "redirect:/order/info/" + orderId;
    }

    @GetMapping("/confirm/{id}")
    public String confirmOrder(@PathVariable("id") int orderId) {
        orderService.confirmOrder(orderId);
        return "redirect:/order/info/" + orderId;
    }

    @PostMapping("/settle")
    public String settleAction(Model model) {
        double result = orderService.settleOrders();
        model.addAttribute("info", "结算成功\n总额为：" + result);
        return "admin/settle";
    }
}
