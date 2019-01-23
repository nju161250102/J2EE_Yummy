package edu.nju.yummy.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class KeyRecord {

    public static final int ADMIN = 0;
    public static final int USER = 1;
    public static final int RESTAURANT = 2;

    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private int identity;
    @Column
    private int logId;
    @Column(nullable = false, length = 50)
    private String logName;
    @Column(nullable = false, length = 20)
    private String password;

}
