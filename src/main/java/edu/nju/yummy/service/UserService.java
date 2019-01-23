package edu.nju.yummy.service;

import edu.nju.yummy.model.ResultModel;

public interface UserService {

    // 用户信息更新
    ResultModel updateInfo(int userId, String name, String phone, String cardNum, String cardPassword);

}
