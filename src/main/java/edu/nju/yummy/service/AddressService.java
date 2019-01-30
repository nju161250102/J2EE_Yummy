package edu.nju.yummy.service;

import com.alibaba.fastjson.JSONArray;
import edu.nju.yummy.model.AddressModel;

import java.util.List;

public interface AddressService {

    // 获取用户地址列表
    JSONArray getAddressList(int userId);

    // 将地址设置为默认地址
    boolean setDefault(int addressId);

    // 保存用户地址
    boolean saveAddress(int userId, String address);

}
