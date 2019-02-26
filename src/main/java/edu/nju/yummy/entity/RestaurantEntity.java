package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "restaurant")
@Getter
@Setter
@NoArgsConstructor
public class RestaurantEntity {

    public static int UNCHECKED = 0;
    public static int CHECKED = 1;
    public static int NOTPASS = 2;

    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = false, length = 7)
    private String stringId;
    @Column(nullable = false, length = 30)
    private String name;
    @Column(nullable = false, length = 50)
    private String address;
    @Column(nullable = false, length = 30)
    private String location;
    @Column(nullable = false, length = 15)
    private String description;
    @Column(nullable = false, length = 13)
    private String phone;
    @Column(nullable = false, length = 20)
    private String cardNum;
    @Column
    private int status = RestaurantEntity.UNCHECKED;

}
