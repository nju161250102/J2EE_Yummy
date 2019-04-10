package edu.nju.yummy.model;

import edu.nju.yummy.entity.OrderEntity;
import edu.nju.yummy.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ScheduledTasks {

    private final OrderRepository orderRepository;

    @Autowired
    public ScheduledTasks(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    @Scheduled(cron = "0 0-59 * * * ?")
    public void checkOrders() {
        List<OrderEntity> orders = orderRepository.findAllByStatus(OrderEntity.WAIT);
        for (OrderEntity order: orders) {
            if (System.currentTimeMillis() - order.getCreateTime().getTime() > 2*60*1000) {
                order.setStatus(OrderEntity.OUT_TIME);
            }
        }
        orderRepository.saveAll(orders);
    }

}
