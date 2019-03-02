package edu.nju.yummy.service.impl;

import edu.nju.yummy.entity.*;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.*;
import edu.nju.yummy.service.LogInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogInServiceImpl implements LogInService {

    private final AccountRepository accountRepository;
    private final RestaurantRepository restaurantRepository;
    private final UserRepository userRepository;
    private final VCodeRepository vCodeRepository;
    private final KeyRecordRepository keyRecordRepository;

    @Autowired
    public LogInServiceImpl(RestaurantRepository restaurantRepository, KeyRecordRepository keyRecordRepository, UserRepository userRepository, VCodeRepository vCodeRepository, AccountRepository accountRepository) {
        this.restaurantRepository = restaurantRepository;
        this.userRepository = userRepository;
        this.vCodeRepository = vCodeRepository;
        this.keyRecordRepository = keyRecordRepository;
        this.accountRepository = accountRepository;
    }

    @Override
    public ResultModel userRegister(String email, String password, String codeNum) {
        ResultModel result = new ResultModel();

        VCode vCode = vCodeRepository.findByEmail(email);
        if (vCode == null) {
            // 未获取过验证码
            result.setInfo("请先获取验证码");
        } else if (! codeNum.equals(vCode.getNum())){
            // 验证码不符合
            result.setInfo("验证码错误");
        } else {
            // 注册新用户
            UserEntity user = new UserEntity();
            user.setEmail(email);
            user = userRepository.save(user);
            vCodeRepository.delete(vCode);
            KeyRecord record = new KeyRecord(null, UserType.USER, user.getId(), email, password);
            keyRecordRepository.save(record);
            result.setSuccess(true);
            result.setInfo("注册成功");
        }
        return result;
    }

    @Override
    public ResultModel userLogin(String email, String password) {
        return login(UserType.USER, email, password);
    }

    @Override
    public ResultModel restaurantRegister(String name, String password, String description, String address, String pointInput, String phone, String cardNum, String cardPassword) {
        ResultModel result = new ResultModel();
        try {
            AccountEntity account = accountRepository.findById(cardNum).orElse(null);
            if (account == null || ! cardPassword.equals(account.getPassword())) {
                result.setInfo("绑定账户出错");
            } else {
                long count = restaurantRepository.count();
                RestaurantEntity restaurant = new RestaurantEntity();
                restaurant.setStringId(String.format("%07d", count + 1));
                restaurant.setName(name);
                restaurant.setAddress(address);
                restaurant.setLocation(pointInput);
                restaurant.setDescription(description);
                restaurant.setPhone(phone);
                restaurant.setCardNum(cardNum);
                restaurant = restaurantRepository.save(restaurant);
                KeyRecord keyRecord = new KeyRecord(null, UserType.RESTAURANT, restaurant.getId(), restaurant.getStringId(), password);
                keyRecordRepository.save(keyRecord);
                result.setSuccess(true);
                result.setInfo("注册成功，您分配的id为：" + restaurant.getStringId());
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setInfo("注册失败");
        }
        return result;
    }

    @Override
    public boolean userChangeKey(int userId, String oldPassword, String newPassword) {
        return changeKey(UserType.USER, userId, oldPassword, newPassword);
    }

    @Override
    public ResultModel restaurantLogin(String stringId, String password) {
        return login(UserType.RESTAURANT, stringId, password);
    }

    @Override
    public boolean restaurantChangeKey(int id, String oldPassword, String newPassword) {
        return changeKey(UserType.RESTAURANT, id, oldPassword, newPassword);
    }

    @Override
    public ResultModel adminLogin(String adminName, String password) {
        return login(UserType.ADMIN, adminName, password);
    }

    private ResultModel login(UserType type, String username, String password) {
        ResultModel result = new ResultModel();
        Integer userId = keyRecordRepository.checkIdentity(type, username, password);
        if (userId == null) {
            result.setInfo("用户名或密码错误，请重试");
        } else {
            result.setSuccess(true);
            result.setInfo("登录成功");
            result.setData(userId);
        }
        return result;
    }

    private boolean changeKey(UserType type, int id, String oldPassword, String newPassword) {
        KeyRecord record = keyRecordRepository.findByUserTypeAndLogId(type, id);
        if (record != null && oldPassword.equals(record.getPassword())) {
            record.setPassword(newPassword);
            keyRecordRepository.save(record);
            return true;
        }
        return false;
    }
}
