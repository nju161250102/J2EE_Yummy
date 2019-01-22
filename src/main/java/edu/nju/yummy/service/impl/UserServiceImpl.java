package edu.nju.yummy.service.impl;

import edu.nju.yummy.entity.AccountEntity;
import edu.nju.yummy.entity.UserEntity;
import edu.nju.yummy.entity.VCode;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.AccountRepository;
import edu.nju.yummy.repository.AddressRepository;
import edu.nju.yummy.repository.UserRepository;
import edu.nju.yummy.repository.VCodeRepository;
import edu.nju.yummy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final VCodeRepository vCodeRepository;
    private final AddressRepository addressRepository;
    private final AccountRepository accountRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, VCodeRepository vCodeRepository, AddressRepository addressRepository, AccountRepository accountRepository) {
        this.userRepository = userRepository;
        this.vCodeRepository = vCodeRepository;
        this.addressRepository = addressRepository;
        this.accountRepository = accountRepository;
    }

    @Override
    public ResultModel register(String email, String password, String codeNum) {
        ResultModel result = new ResultModel();

        VCode vCode = vCodeRepository.findByEmail(email);
        if (vCode == null) {
            // 未获取过验证码
            result.setInfo("请先获取验证码");
        } else if (! codeNum.equals(vCode.getNum())){
            // 验证码不符合
            result.setInfo("请先获取验证码");
        } else {
            // 注册新用户
            UserEntity user = new UserEntity();
            user.setEmail(email);
            user.setPassword(password);
            userRepository.save(user);
            vCodeRepository.delete(vCode);
            result.setSuccess(true);
            result.setInfo("注册成功");
        }
        return result;
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
    public boolean changePassword(int userId, String oldPassword, String newPassword) {
        UserEntity userEntity = userRepository.findById(userId).orElse(null);
        if (userEntity != null && oldPassword.equals(userEntity.getPassword())) {
            userEntity.setPassword(newPassword);
            userRepository.save(userEntity);
            return true;
        }
        return false;
    }
}
