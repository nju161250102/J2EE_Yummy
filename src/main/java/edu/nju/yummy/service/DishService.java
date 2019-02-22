package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public interface DishService {

    JSONArray getAvailableDish(int restId);

    // 获取餐厅发布的所有菜品 结束日期大于等于当前日期
    JSONArray getAllDishes(int restId);

    // 获取某菜品详细信息
    JSONObject getDish(int id);

    // 增加新菜品
    void addDish(int restId, String name, String startDate, String endDate, Double price, int num, boolean isPackage);

    JSONArray getDishItems(int id);

    //
    void addDishItem(int dishId, String name, double price, int num);

    //
    void deleteDishItem(int id);

    //
    void finishDishPackage(int dishId);
}
