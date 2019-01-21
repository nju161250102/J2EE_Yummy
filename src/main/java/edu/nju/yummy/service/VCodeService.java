package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONObject;

public interface VCodeService {

    // 随机生成6位验证码，并发送至邮箱，以json对象返回业务结果
    JSONObject sendCode(String email);
}
