package edu.nju.yummy.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StatisticModel {

    private String restName;
    private double orderSum = 0;
    private double orderPayment = 0;
    private double cancelSum = 0;
    private double refund = 0;

    public void addOrderSum(double num) {
        orderSum += num;
    }

    public void addOrderPayment(double num) {
        orderPayment += num;
    }

    public void addCancelSum(double num) {
        cancelSum += num;
    }

    public void addRefund(double num) {
        refund += num;
    }
}
