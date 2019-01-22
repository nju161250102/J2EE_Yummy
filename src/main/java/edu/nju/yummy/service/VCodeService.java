package edu.nju.yummy.service;

import edu.nju.yummy.model.ResultModel;

public interface VCodeService {

    // 随机生成6位验证码，并发送至邮箱，以json对象返回业务结果
    ResultModel sendCode(String email);
}
