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
    public ResultModel updateInfo(int id, String name, String address, String description, String phone) {
        ResultModel result = new ResultModel();

        try {
            RestaurantEntity restaurant = restaurantRepository.getOne(id);
            String stringId = restaurant.getStringId();
            RestaurantEntity newInfo = restaurantRepository.findByStringIdAndStatus(stringId, RestaurantEntity.UNCHECKED);
            if (newInfo == null) {
                newInfo = new RestaurantEntity();
                newInfo.setStringId(stringId);
            }
            newInfo.setName(name);
            newInfo.setAddress(address);
            newInfo.setDescription(description);
            newInfo.setPhone(phone);
            restaurantRepository.save(newInfo);

            result.setSuccess(true);
            result.setInfo("更新成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.setInfo("更新失败");
        }
        return result;
    }

    @Override
    public boolean cancelUpdate(int id) {
        try {
            RestaurantEntity restaurant = restaurantRepository.getOne(id);
            String stringId = restaurant.getStringId();
            RestaurantEntity newInfo = restaurantRepository.findByStringIdAndStatus(stringId, RestaurantEntity.UNCHECKED);
            if (newInfo != null) {
                restaurantRepository.delete(newInfo);
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
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
        RestaurantEntity restaurant = restaurantRepository.findById(id).orElse(null);
        if (restaurant == null) return new JSONObject();
        String stringId = restaurant.getStringId();
        RestaurantEntity newInfo = restaurantRepository.findByStringIdAndStatus(stringId, RestaurantEntity.UNCHECKED);
        if (newInfo == null) {
            return (JSONObject) JSON.toJSON(restaurant);
        } else {
            return (JSONObject) JSON.toJSON(newInfo);
        }
    }

    @Override
    public JSONObject getCheckedInfo(int id) {
        RestaurantEntity restaurant = restaurantRepository.findById(id).orElse(null);
        if (restaurant == null) return new JSONObject();
        return (JSONObject) JSON.toJSON(restaurant);
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
