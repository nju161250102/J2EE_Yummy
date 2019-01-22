package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.AddressEntity;
import edu.nju.yummy.model.AddressModel;
import edu.nju.yummy.repository.AddressRepository;
import edu.nju.yummy.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    private final AddressRepository addressRepository;

    @Autowired
    public AddressServiceImpl(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    @Override
    public List<AddressModel> getAddressList(int userId) {
        List<AddressModel> addressList = new ArrayList<>();
        // 将数据库数据转化为显示模型
        for (AddressEntity address: addressRepository.findAllByUserId(userId)) {
            addressList.add(new AddressModel(
                    address.getId(),
                    address.getDetail(),
                    address.getStatus() == AddressEntity.DEFAULT));
        }
        return addressList;
    }

    @Override
    public boolean setDefault(int addressId) {
        try {
            AddressEntity address = addressRepository.getOne(addressId);
            AddressEntity oldDefault = addressRepository.findDefaultAddress(address.getUserId());
            // 如果已经存在默认地址
            if (oldDefault != null) {
                // 将之前的默认地址取消
                oldDefault.setStatus(AddressEntity.NOT_DEFAULT);
                addressRepository.save(oldDefault);
            }
            // 设置新的默认地址
            address.setStatus(AddressEntity.DEFAULT);
            addressRepository.save(address);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean saveAddress(int userId, JSONArray addressList) {
        try {
            addressRepository.deleteAllByUserId(userId);
            for (Object obj: addressList) {
                JSONObject jsonObject = (JSONObject) obj;
                AddressEntity addressEntity = new AddressEntity();
                addressEntity.setId(jsonObject.getInteger("id"));
                addressEntity.setDetail(jsonObject.getString("detail"));
                addressEntity.setUserId(userId);
                addressEntity.setStatus(jsonObject.getInteger("status"));
                addressRepository.save(addressEntity);
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
