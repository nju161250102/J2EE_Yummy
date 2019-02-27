package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONArray;

public interface StatisticService {

    JSONArray getUserStatistics(int userId, String startDate, String endDate);
}
