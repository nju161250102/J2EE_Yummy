package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "account")
@Getter
@Setter
@NoArgsConstructor
public class AccountEntity {

    @Id
    @Column(nullable = false, length = 20)
    private String num;
    @Column(nullable = false)
    private double money = 0.0;
    @Column(nullable = false, length = 6)
    private String password;

}
