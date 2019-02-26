package edu.nju.yummy.repository;

import edu.nju.yummy.entity.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, Integer> {

    List<OrderEntity> findAllByUserIdAndStatus(int userId, int status);

    List<OrderEntity> findAllByUserId(int userId);

    List<OrderEntity> findAllByRestaurantId(int restaurantId);

    List<OrderEntity> findAllByStatus(int status);
}
