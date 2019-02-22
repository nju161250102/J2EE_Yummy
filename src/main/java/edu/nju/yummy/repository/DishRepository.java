package edu.nju.yummy.repository;

import edu.nju.yummy.entity.DishEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DishRepository extends JpaRepository<DishEntity, Integer> {

    List<DishEntity> findAllByRestaurantId(int restId);

    @Query("SELECT d FROM DishEntity d WHERE d.restaurantId = :restId AND d.startDate <= CURRENT_DATE AND d.endDate >= CURRENT_DATE AND d.num > 0")
    List<DishEntity> availableDishes(@Param("restId") int restId);

}
