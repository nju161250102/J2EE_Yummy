package edu.nju.yummy.repository;

import edu.nju.yummy.entity.RestaurantEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RestaurantRepository extends JpaRepository<RestaurantEntity, Integer> {

    List<RestaurantEntity> findAllByStatus(int status);

    List<RestaurantEntity> findAllByStringId(String stringId);
}
