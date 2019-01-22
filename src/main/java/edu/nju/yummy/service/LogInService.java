package edu.nju.yummy.service;

import edu.nju.yummy.model.ResultModel;

public interface LogInService {

    ResultModel userLogin(String email, String password);

    ResultModel restaurantLogin(String id, String password);

    ResultModel adminLogin(String adminName, String password);

}
