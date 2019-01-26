package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.model.ResultModel;

public interface UserService {

    // 用户信息更新
    ResultModel updateInfo(int userId, String name, String phone, String cardNum, String cardPassword);

    // JSON
    JSONObject getUser(int userId);
}
