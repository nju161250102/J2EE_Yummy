package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.*;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.*;
import edu.nju.yummy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl implements OrderService {

    private final String adminCardNum = "677351234567890";
    private final OrderRepository orderRepository;
    private final CancelRecordRepository cancelRecordRepository;
    private final DishRepository dishRepository;
    private final OrderItemRepository orderItemRepository;
    private final RestaurantRepository restaurantRepository;
    private final UserRepository userRepository;
    private final AccountRepository accountRepository;

    @Autowired
    public OrderServiceImpl(OrderRepository orderRepository, DishRepository dishRepository, OrderItemRepository orderItemRepository, RestaurantRepository restaurantRepository, UserRepository userRepository, AccountRepository accountRepository, CancelRecordRepository cancelRecordRepository) {
        this.orderRepository = orderRepository;
        this.dishRepository = dishRepository;
        this.orderItemRepository = orderItemRepository;
        this.restaurantRepository = restaurantRepository;
        this.userRepository = userRepository;
        this.accountRepository = accountRepository;
        this.cancelRecordRepository = cancelRecordRepository;
    }


    @Override
    public JSONArray getOrderList(int userType, int id, String type) {
        int status = -1;
        if ("wait".equals(type)) {
            status = OrderEntity.WAIT;
        } else if ("out".equals(type)) {
            status = OrderEntity.OUT_TIME;
        } else if ("payed".equals(type)) {
            status = OrderEntity.PAYED;
        }
        List<OrderEntity> orders;
        if (userType == 1) {
            orders = status != -1 ? orderRepository.findAllByUserIdAndStatus(id, status)
                    : orderRepository.findAllByUserId(id);
        } else {
            orders = orderRepository.findAllByRestaurantId(id);
        }
        JSONArray results = (JSONArray) JSON.toJSON(orders);
        for(int i = 0; i < results.size();i++){
            JSONObject order = results.getJSONObject(i);
            RestaurantEntity restaurant = restaurantRepository.findById(order.getInteger("restaurantId")).orElse(null);
            if (restaurant != null) {
                order.put("restaurant", restaurant.getName());
            }

            int orderStatus = order.getInteger("status");
            if (orderStatus == OrderEntity.CANCEL) {
                order.put("status", "已取消");
            } else if (orderStatus == OrderEntity.OUT_TIME) {
                order.put("status", "超时");
            } else if(orderStatus == OrderEntity.PAYED) {
                order.put("status", "已支付");
            } else if(orderStatus == OrderEntity.WAIT) {
                order.put("status", "待支付");
            } else if (orderStatus == OrderEntity.CONFIRMED) {
                order.put("status", "已收货");
            } else if (orderStatus == OrderEntity.SETTLED) {
                order.put("status", "已结算");
            }
        }
        return results;
    }

    public JSONObject getOrder(int orderId) {
        OrderEntity order = orderRepository.findById(orderId).orElse(null);
        if (order == null) return new JSONObject();
        JSONObject orderJson = (JSONObject) JSON.toJSON(order);
        JSONArray orderItemJson = new JSONArray();
        List<OrderItem> orderItemList = orderItemRepository.findAllByOrderId(orderId);
        for (OrderItem item: orderItemList) {
            DishEntity dish = dishRepository.getOne(item.getDishId());
            JSONObject itemJson = (JSONObject) JSON.toJSON(item);
            itemJson.put("name", dish.getName());
            orderItemJson.add(itemJson);
        }
        orderJson.put("items", orderItemJson);
        orderJson.put("restaurant", restaurantRepository.getOne(order.getRestaurantId()).getName());
        return orderJson;
    }

    @Override
    public int addOrder(int userId, int restId, int addressId, String remark, Map<Integer, Integer> orderMap) {
        OrderEntity order = new OrderEntity();
        order.setAddressId(addressId);
        order.setRemark(remark);
        order.setRestaurantId(restId);
        order.setUserId(userId);
        order = orderRepository.save(order);
        double sum = 0;
        for (Integer key : orderMap.keySet()) {
            DishEntity dish = dishRepository.getOne(key);
            sum += dish.getPrice() * orderMap.get(key);
            OrderItem orderItem = new OrderItem();
            orderItem.setDishId(key);
            orderItem.setNum(orderMap.get(key));
            orderItem.setOrderId(order.getId());
            orderItem.setPrice(dish.getPrice());
            orderItemRepository.save(orderItem);
        }
        order.setSum(sum);
        orderRepository.save(order);
        return order.getId();
    }

    @Override
    public ResultModel payOrder(int orderId, String password) {
        ResultModel result = new ResultModel();
        OrderEntity order = orderRepository.getOne(orderId);
        // check account
        int userId = order.getUserId();
        UserEntity user = userRepository.getOne(userId);
        String cardNum = user.getCardNum();
        AccountEntity account = accountRepository.getOne(cardNum);
        if (! password.equals(account.getPassword())) {
            result.setInfo("支付密码错误");
        } else if (account.getMoney() < order.getSum()) {
            result.setInfo("账户余额不足");
        } else {
            // pay
            double payment = getPayment(order.getSum(), user.getCredit());
            account.setMoney(account.getMoney() - payment);
            AccountEntity adminAccount = accountRepository.getOne(adminCardNum);
            adminAccount.setMoney(adminAccount.getMoney() + payment);
            int credit = getCredit(order.getSum());
            order.setCredit(credit);
            user.setCredit(user.getCredit() + credit);
            order.setPayment(payment);
            order.setStatus(OrderEntity.PAYED);
            //
            List<OrderItem> orderItems = orderItemRepository.findAllByOrderId(orderId);
            for (OrderItem orderItem: orderItems) {
                DishEntity dish = dishRepository.getOne(orderItem.getDishId());
                dish.setNum(dish.getNum() - orderItem.getNum());
            }

            accountRepository.save(account);
            accountRepository.save(adminAccount);
            orderRepository.save(order);
            userRepository.save(user);
            result.setSuccess(true);
            result.setInfo("支付成功");
        }
        return result;
    }

    @Override
    public void cancelOrder(int orderId) {
        OrderEntity order = orderRepository.getOne(orderId);
        order.setStatus(OrderEntity.CANCEL);
        UserEntity user = userRepository.getOne(order.getUserId());
        user.setCredit(user.getCredit() - order.getCredit());
        AccountEntity account = accountRepository.getOne(user.getCardNum());
        AccountEntity restAccount = accountRepository.getOne(restaurantRepository.getOne(order.getRestaurantId()).getCardNum());
        AccountEntity adminAccount = accountRepository.getOne(adminCardNum);
        double refund = getRefund(order.getPayment(), order.getCreateTime().getTime());
        account.setMoney(account.getMoney() + refund);
        adminAccount.setMoney(adminAccount.getMoney() - order.getPayment());
        restAccount.setMoney(restAccount.getMoney() + (order.getPayment() - refund));
        CancelRecord record = new CancelRecord();
        record.setOrderId(orderId);
        record.setPayment(order.getPayment());
        record.setRefund(refund);
        record.setCredit(order.getCredit());

        orderRepository.save(order);
        userRepository.save(user);
        accountRepository.save(account);
        accountRepository.save(adminAccount);
        accountRepository.save(restAccount);
        cancelRecordRepository.save(record);
    }

    @Override
    public void confirmOrder(int orderId) {
        OrderEntity order = orderRepository.getOne(orderId);
        order.setStatus(OrderEntity.CONFIRMED);
        orderRepository.save(order);
    }

    @Override
    public double settleOrders() {
        List<OrderEntity> orders = orderRepository.findAllByStatus(OrderEntity.CONFIRMED);
        double sum = 0;
        for (OrderEntity order: orders) {
            int restId = order.getRestaurantId();
            RestaurantEntity restaurant = restaurantRepository.getOne(restId);
            AccountEntity account = accountRepository.getOne(restaurant.getCardNum());
            account.setMoney(account.getMoney() + 0.8 * order.getPayment());
            sum += order.getPayment();
            order.setStatus(OrderEntity.SETTLED);
            orderRepository.save(order);
        }
        return sum;
    }

    private double getPayment(double price, int credit) {
        return price;
    }

    private int getCredit(double price) {
        return (int) (price / 10);
    }

    private double getRefund(double payment, long orderTime) {
        long nowTime = System.currentTimeMillis();
        long delta = nowTime - orderTime;
        if (delta < 300000) return 0.8 * payment;
        else if (delta < 600000) return 0.5 * payment;
        else return 0;
    }
}
