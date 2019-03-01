package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.CancelRecord;
import edu.nju.yummy.entity.OrderEntity;
import edu.nju.yummy.entity.RestaurantEntity;
import edu.nju.yummy.entity.UserEntity;
import edu.nju.yummy.model.StatisticModel;
import edu.nju.yummy.repository.CancelRecordRepository;
import edu.nju.yummy.repository.OrderRepository;
import edu.nju.yummy.repository.RestaurantRepository;
import edu.nju.yummy.repository.UserRepository;
import edu.nju.yummy.service.StatisticService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.*;

@Service
public class StatisticServiceImpl implements StatisticService {

    private final CancelRecordRepository cancelRecordRepository;
    private final OrderRepository orderRepository;
    private final RestaurantRepository restaurantRepository;
    private final UserRepository userRepository;

    @Autowired
    public StatisticServiceImpl(OrderRepository orderRepository, RestaurantRepository restaurantRepository, CancelRecordRepository cancelRecordRepository, UserRepository userRepository) {
        this.orderRepository = orderRepository;
        this.restaurantRepository = restaurantRepository;
        this.cancelRecordRepository = cancelRecordRepository;
        this.userRepository = userRepository;
    }

    @Override
    public JSONArray getUserStatistics(int userId, String startDate, String endDate) {
        List<OrderEntity> orders = orderRepository.searchUserOrder(userId, Timestamp.valueOf(startDate + " 00:00:00"), Timestamp.valueOf(endDate+ " 00:00:00"));
        Map<Integer, StatisticModel> results = new HashMap<>();
        for (OrderEntity order: orders) {
            StatisticModel statistic = new StatisticModel();
            if (results.keySet().contains(order.getRestaurantId())) {
                statistic = results.get(order.getRestaurantId());
            } else {
                RestaurantEntity restaurant = restaurantRepository.getOne(order.getRestaurantId());
                statistic.setRestName(restaurant.getName());
            }
            if (order.getStatus() == OrderEntity.CANCEL) {
                statistic.addCancelSum(order.getSum());
                CancelRecord record = cancelRecordRepository.findByOrderId(order.getId());
                statistic.addRefund(record.getRefund());
            } else {
                statistic.addOrderSum(order.getSum());
                statistic.addOrderPayment(order.getPayment());
            }
            if (! results.keySet().contains(order.getRestaurantId())) {
                results.put(order.getRestaurantId(), statistic);
            }
        }
        List<StatisticModel> list = new ArrayList<>(results.values());
        return (JSONArray) JSON.toJSON(list);
    }

    @Override
    public JSONArray getRestaurantStatistics(int restId, String startDate, String endDate) {
        List<OrderEntity> orders = orderRepository.searchRestaurantOrder(restId, Timestamp.valueOf(startDate + " 00:00:00"), Timestamp.valueOf(endDate+ " 00:00:00"));
        Map<Integer, StatisticModel> results = new HashMap<>();
        for (OrderEntity order: orders) {
            StatisticModel statistic = new StatisticModel();
            if (results.keySet().contains(order.getUserId())) {
                statistic = results.get(order.getUserId());
            } else {
                UserEntity userEntity = userRepository.getOne(order.getUserId());
                statistic.setRestName(userEntity.getName());
            }
            if (order.getStatus() == OrderEntity.CANCEL) {
                statistic.addCancelSum(order.getSum());
                CancelRecord record = cancelRecordRepository.findByOrderId(order.getId());
                statistic.addRefund(record.getRefund());
            } else {
                statistic.addOrderSum(order.getSum());
                statistic.addOrderPayment(order.getPayment());
            }
            if (! results.keySet().contains(order.getUserId())) {
                results.put(order.getRestaurantId(), statistic);
            }
        }
        List<StatisticModel> list = new ArrayList<>(results.values());
        return (JSONArray) JSON.toJSON(list);
    }

    @Override
    public JSONObject getAdminStatistic() {
        JSONObject result = new JSONObject();
        result.put("userNum", userRepository.count());
        result.put("restaurantNum", restaurantRepository.count());
        List<OrderEntity> orders = orderRepository.findAllByStatus(OrderEntity.SETTLED);
        double sum = 0;
        for (OrderEntity order: orders) {
            sum += order.getPayment() * 0.2;
        }
        result.put("benefitSum", sum);
        return result;
    }

}
