package edu.nju.yummy.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "user")
@Getter
@Setter
@NoArgsConstructor
public class UserEntity {

    public static final int INCOMPLETE = 0;
    public static final int NORMAL = 1;
    public static final int DELETED = -1;

    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = false)
    private String email;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false)
    private String name = "";
    @Column(nullable = false)
    private String phone = "";
    @Column(nullable = false)
    private String cardNum = "";
    @Column(nullable = false)
    private Timestamp registerTime = new Timestamp(System.currentTimeMillis());
    @Column(nullable = false)
    private int status = UserEntity.INCOMPLETE;

}
