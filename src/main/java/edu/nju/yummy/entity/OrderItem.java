package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table
@Setter
@Getter
@NoArgsConstructor
public class OrderItem {

    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private int orderId;
    @Column
    private int dishId;
    @Column
    private double price;
    @Column
    private int num;

}
