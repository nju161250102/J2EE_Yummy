package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public interface StatisticService {

    JSONArray getUserStatistics(int userId, String startDate, String endDate);

    JSONArray getRestaurantStatistics(int restId, String startDate, String endDate);

    JSONObject getAdminStatistic();
}
