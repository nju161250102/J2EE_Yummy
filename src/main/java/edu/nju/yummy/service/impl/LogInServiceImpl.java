package edu.nju.yummy.service.impl;

import edu.nju.yummy.entity.UserEntity;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.UserRepository;
import edu.nju.yummy.service.LogInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogInServiceImpl implements LogInService {

    private final UserRepository userRepository;

    @Autowired
    public LogInServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public ResultModel userLogin(String email, String password) {
        ResultModel result = new ResultModel();
        UserEntity user = userRepository.findByEmail(email);
        if (user == null) {
            result.setInfo("用户尚未注册");
        } else {
            if (! password.equals(user.getPassword())) {
                result.setInfo("密码错误，请重试");
            } else {
                result.setSuccess(true);
                result.setInfo("登录成功");
            }
        }
        return result;
    }

    @Override
    public ResultModel restaurantLogin(String id, String password) {
        return null;
    }

    @Override
    public ResultModel adminLogin(String adminName, String password) {
        return null;
    }
}
