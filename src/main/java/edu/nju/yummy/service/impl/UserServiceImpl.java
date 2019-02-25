package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.AccountEntity;
import edu.nju.yummy.entity.UserEntity;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.AccountRepository;
import edu.nju.yummy.repository.AddressRepository;
import edu.nju.yummy.repository.UserRepository;
import edu.nju.yummy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final AddressRepository addressRepository;
    private final AccountRepository accountRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, AddressRepository addressRepository, AccountRepository accountRepository) {
        this.userRepository = userRepository;
        this.addressRepository = addressRepository;
        this.accountRepository = accountRepository;
    }

    @Override
    public ResultModel updateInfo(int userId, String name, String phone, String cardNum, String cardPassword) {
        ResultModel result = new ResultModel();
        UserEntity user = userRepository.getOne(userId);
        // 以上有一项为空字符串则将状态设为信息不完整
        // 卡号密码必须正确
        AccountEntity account = accountRepository.findById(cardNum).orElse(null);
        if (account == null) {
            result.setInfo("绑定银行卡出错：账户不存在");
        } else if (! account.getPassword().equals(cardPassword)) {
            result.setInfo("绑定银行卡出错：支付密码错误");
        } else {
            user.setName(name);
            user.setCardNum(cardNum);
            user.setPhone(phone);
            result.setSuccess(true);
            result.setInfo("更新信息成功");
            // 地址列表不能为空
            if (addressRepository.findAllByUserId(userId).size() == 0) {
                user.setStatus(UserEntity.INCOMPLETE);
                result.setInfo("更新信息成功，请继续填写送货地址");
            } else {
                user.setStatus(UserEntity.NORMAL);
            }
            // 更新用户
            userRepository.save(user);
        }
        return result;
    }

    @Override
    public JSONObject getUser(int userId) {
        JSONObject result = new JSONObject();
        UserEntity user;
        user = userRepository.findById(userId).orElse(null);
        if (user != null) {
            result = (JSONObject) JSON.toJSON(user);
            // level of user
            int credit = user.getCredit();
            if (credit < 200) {
                result.put("level", "大众会员");
            } else if (credit < 600) {
                result.put("level", "黄金会员");
            } else if (credit < 1800) {
                result.put("level", "铂金会员");
            } else {
                result.put("level", "钻石会员");
            }
        }
        return result;
    }

}
