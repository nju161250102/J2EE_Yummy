package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "address")
@Getter
@Setter
@NoArgsConstructor
public class AddressEntity {

    public static final int NOT_DEFAULT = 0;
    public static final int DEFAULT = 1;

    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = false)
    private Integer userId;
    @Column(nullable = false, length = 50)
    private String detail = "";
    @Column(nullable = false)
    private int status = AddressEntity.NOT_DEFAULT;

}
