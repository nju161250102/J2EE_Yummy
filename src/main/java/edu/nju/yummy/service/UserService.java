package edu.nju.yummy.service;

import edu.nju.yummy.model.ResultModel;

public interface UserService {

    // 用户注册
    ResultModel register(String email, String password, String codeNum);

    // 用户信息更新
    ResultModel updateInfo(int userId, String name, String phone, String cardNum, String cardPassword);

    // 用户更改密码
    boolean changePassword(int userId, String oldPassword, String newPassword);

}
