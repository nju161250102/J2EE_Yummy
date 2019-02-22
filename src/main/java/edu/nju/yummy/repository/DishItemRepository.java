package edu.nju.yummy.repository;

import edu.nju.yummy.entity.DishItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DishItemRepository extends JpaRepository<DishItem, Integer> {

    List<DishItem> findAllByDishId(int dishId);
}
