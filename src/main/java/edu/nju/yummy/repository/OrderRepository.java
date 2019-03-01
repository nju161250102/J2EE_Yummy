package edu.nju.yummy.repository;

import edu.nju.yummy.entity.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, Integer> {

    List<OrderEntity> findAllByUserIdAndStatus(int userId, int status);

    List<OrderEntity> findAllByUserId(int userId);

    List<OrderEntity> findAllByRestaurantId(int restaurantId);

    List<OrderEntity> findAllByStatus(int status);

    @Query("SELECT o FROM OrderEntity o WHERE o.userId = :userId AND o.createTime >= :startDate AND o.createTime <= :endDate AND o.status > 2")
    List<OrderEntity> searchUserOrder(@Param("userId") int userId, @Param("startDate") Timestamp start, @Param("endDate") Timestamp end);

    @Query("SELECT o FROM OrderEntity o WHERE o.restaurantId = :restaurantId AND o.createTime >= :startDate AND o.createTime <= :endDate AND o.status > 2")
    List<OrderEntity> searchRestaurantOrder(@Param("restaurantId") int restaurantId, @Param("startDate") Timestamp start, @Param("endDate") Timestamp end);

}
