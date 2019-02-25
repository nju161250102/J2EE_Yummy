package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "cancel_order")
@Setter
@Getter
@NoArgsConstructor
public class CancelRecord {

    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private int orderId;
    @Column
    private double payment;
    @Column
    private double refund;
    @Column
    private int credit;
}
