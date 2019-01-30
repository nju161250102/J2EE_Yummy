package edu.nju.yummy.entity;

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
    @OneToOne(targetEntity = RestaurantEntity.class)
    @Column(nullable = false)
    private int restaurantId;
    @Column(nullable = false, length = 15)
    private String name;
    @Column(nullable = false)
    private double price;
    @Column(nullable = false)
    private int num = 0;
    @Column(nullable = false)
    private int hasItem = 0;
    @Column(nullable = false)
    private Date startDate;
    @Column(nullable = false)
    private Date endDate;

}
