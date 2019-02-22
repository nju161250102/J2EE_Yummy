package edu.nju.yummy.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "dish")
@Setter
@Getter
@NoArgsConstructor
public class DishEntity {

    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = false)
    private int restaurantId;
    @Column(nullable = false, length = 15)
    private String name;
    @Column(nullable = false)
    private double price = 0;
    @Column(nullable = false)
    private int num = 0;
    @Column(nullable = false)
    private int hasItem = 0;
    @JSONField(format="yyyy-MM-dd")
    @Column(nullable = false)
    private Date startDate;
    @JSONField(format="yyyy-MM-dd")
    @Column(nullable = false)
    private Date endDate;

}
