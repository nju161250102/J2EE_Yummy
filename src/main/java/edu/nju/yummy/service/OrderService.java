package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.model.ResultModel;

import java.util.Map;

public interface OrderService {

    JSONArray getOrderList(int userId, String type);

    JSONObject getOrder(int orderId);

    int addOrder(int userId, int restId, int addressId, String remark, Map<Integer, Integer> orderMap);

    ResultModel payOrder(int orderId, String password);

    void cancelOrder(int orderId);

}
