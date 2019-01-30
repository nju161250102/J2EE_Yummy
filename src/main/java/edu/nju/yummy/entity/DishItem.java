package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table
@Getter
@Setter
@NoArgsConstructor
public class DishItem {

    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = false)
    private int dishId;
    @Column(nullable = false, length = 15)
    private String name;
    @Column(nullable = false)
    private double price;
    @Column(nullable = false)
    private int num;

}
