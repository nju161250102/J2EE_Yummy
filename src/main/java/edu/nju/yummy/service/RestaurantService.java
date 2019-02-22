package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.model.ResultModel;

public interface RestaurantService {

    // 信息更新
    ResultModel updateInfo(int id, String name, String address, String description, String phone);

    //
    boolean cancelUpdate(int id);

    // 获取审核通过的列表
    JSONArray getAvailableList();

    JSONArray getUncheckedList();

    //
    JSONObject getInfo(int id);

    JSONObject getCheckedInfo(int id);

    boolean check(String stringId, boolean isPassed);
}
