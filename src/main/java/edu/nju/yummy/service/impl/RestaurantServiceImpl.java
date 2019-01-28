package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.RestaurantEntity;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.RestaurantRepository;
import edu.nju.yummy.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    private final RestaurantRepository restaurantRepository;

    @Autowired
    public RestaurantServiceImpl(RestaurantRepository restaurantRepository) {
        this.restaurantRepository = restaurantRepository;
    }

    @Override
    public ResultModel updateInfo(String name, String address, String description, String phone) {
        return null;
    }

    @Override
    public JSONArray getAvailableList() {
        List<RestaurantEntity> list = restaurantRepository.findAllByStatus(RestaurantEntity.CHECKED);
        return (JSONArray) JSON.toJSON(list);
    }

    @Override
    public JSONArray getUncheckedList() {
        List<RestaurantEntity> list = restaurantRepository.findAllByStatus(RestaurantEntity.UNCHECKED);
        return (JSONArray) JSON.toJSON(list);
    }

    @Override
    public JSONObject getInfo(int id) {
        return null;
    }

    @Override
    public boolean check(String stringId, boolean isPassed) {
        try {
            List<RestaurantEntity> restaurantList = restaurantRepository.findAllByStringId(stringId);
            for (RestaurantEntity restaurant: restaurantList) {
                if (restaurant.getStatus() == RestaurantEntity.UNCHECKED) {
                    restaurant.setStatus(isPassed ? RestaurantEntity.CHECKED : RestaurantEntity.NOTPASS);
                    restaurantRepository.save(restaurant);
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
