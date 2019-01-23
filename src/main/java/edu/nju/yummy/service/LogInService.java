package edu.nju.yummy.service;

import edu.nju.yummy.model.ResultModel;

public interface LogInService {

    // 用户注册
    ResultModel userRegister(String email, String password, String codeNum);

    // 用户更改密码
    boolean userChangeKey(int userId, String oldPassword, String newPassword);

    ResultModel userLogin(String email, String password);

    boolean restaurantChangeKey(int id, String oldPassword, String newPassword);

    ResultModel restaurantLogin(String stringId, String password);

    ResultModel adminLogin(String adminName, String password);

}
