package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.DishEntity;
import edu.nju.yummy.entity.DishItem;
import edu.nju.yummy.repository.DishItemRepository;
import edu.nju.yummy.repository.DishRepository;
import edu.nju.yummy.service.DishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class DishServiceImpl implements DishService {

    private final DishRepository dishRepository;
    private final DishItemRepository dishItemRepository;

    @Autowired
    public DishServiceImpl(DishRepository dishRepository, DishItemRepository dishItemRepository) {
        this.dishRepository = dishRepository;
        this.dishItemRepository = dishItemRepository;
    }

    @Override
    public JSONArray getAvailableDish(int restId) {
        List<DishEntity> dishes = dishRepository.availableDishes(restId);
        return (JSONArray) JSON.toJSON(dishes);
    }

    @Override
    public JSONArray getAllDishes(int restId) {
        List<DishEntity> dishes = dishRepository.findAllByRestaurantId(restId);
        return (JSONArray) JSON.toJSON(dishes);
    }

    @Override
    public JSONObject getDish(int id) {
        DishEntity dishEntity = dishRepository.findById(id).orElse(null);
        if (dishEntity == null) return new JSONObject();
        return (JSONObject) JSON.toJSON(dishEntity);
    }

    @Override
    public JSONArray getDishItems(int id) {
        return (JSONArray) JSON.toJSON(dishItemRepository.findAllByDishId(id));
    }

    @Override
    public void addDish(int restId, String name, String startDate, String endDate, Double price, int num, boolean isPackage) {
        DishEntity newDish = new DishEntity();
        newDish.setRestaurantId(restId);
        newDish.setName(name);
        newDish.setStartDate(Date.valueOf(startDate));
        newDish.setEndDate(Date.valueOf(endDate));
        newDish.setPrice(isPackage ? 0 : price);
        newDish.setNum(num);
        newDish.setHasItem(isPackage ? 1 : 0);
        dishRepository.save(newDish);
    }

    @Override
    public void addDishItem(int dishId, String name, double price, int num) {
        DishItem dishItem = new DishItem();
        dishItem.setDishId(dishId);
        dishItem.setName(name);
        dishItem.setPrice(price);
        dishItem.setNum(num);
        dishItemRepository.save(dishItem);
    }

    @Override
    public void deleteDishItem(int id) {
        DishItem dishItem = dishItemRepository.getOne(id);
        dishItemRepository.delete(dishItem);
    }

    @Override
    public void finishDishPackage(int dishId) {
        List<DishItem> dishItems = dishItemRepository.findAllByDishId(dishId);
        double sum = 0;
        for (DishItem item: dishItems) {
            sum += item.getNum() * item.getPrice();
        }
        DishEntity dishEntity = dishRepository.getOne(dishId);
        dishEntity.setPrice(sum);
        dishRepository.save(dishEntity);
    }
}
