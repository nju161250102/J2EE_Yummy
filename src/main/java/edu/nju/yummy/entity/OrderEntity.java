package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "orders")
@Setter
@Getter
@NoArgsConstructor
public class OrderEntity {

    public static int WAIT = 0;
    public static int PAYED = 1;
    public static int OUT_TIME = 2;
    public static int CANCEL = 3;

    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private int userId;
    @Column
    private int restaurantId;
    @Column
    private int addressId;
    @Column
    private double sum;
    @Column
    private double payment = 0;
    @Column
    private int credit = 0;
    @Column
    private int status = OrderEntity.WAIT;
    @Column(nullable = false, length = 100)
    private String remark;
    @Column(nullable = false)
    private Timestamp createTime = new Timestamp(System.currentTimeMillis());

}
