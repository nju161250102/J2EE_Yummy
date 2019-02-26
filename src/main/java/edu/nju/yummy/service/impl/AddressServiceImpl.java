package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import edu.nju.yummy.entity.AddressEntity;
import edu.nju.yummy.entity.UserEntity;
import edu.nju.yummy.repository.AddressRepository;
import edu.nju.yummy.repository.UserRepository;
import edu.nju.yummy.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    private final AddressRepository addressRepository;
    @Autowired
    private UserRepository userRepository;

    @Autowired
    public AddressServiceImpl(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    @Override
    public JSONArray getAddressList(int userId) {
        List<AddressEntity> addressList = addressRepository.findAllByUserId(userId);
        return (JSONArray) JSON.toJSON(addressList);
    }

    @Override
    public boolean setDefault(int addressId) {
        try {
            AddressEntity address = addressRepository.getOne(addressId);
            AddressEntity oldDefault = addressRepository.defaultAddress(address.getUserId());
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
    public boolean saveAddress(int userId, String address, String pointInput) {
        try {
            AddressEntity addressEntity = new AddressEntity();
            addressEntity.setDetail(address);
            addressEntity.setUserId(userId);
            addressEntity.setPoint(pointInput);
            addressRepository.save(addressEntity);
            UserEntity user = userRepository.getOne(userId);
            if (user.getStatus() == UserEntity.INCOMPLETE) {
                user.setStatus(UserEntity.NORMAL);
                userRepository.save(user);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void delete(int addressId) {
        addressRepository.deleteById(addressId);
    }

}
