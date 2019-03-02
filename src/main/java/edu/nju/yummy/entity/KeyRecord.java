package edu.nju.yummy.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class KeyRecord {

    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "identity")
    @Enumerated(EnumType.ORDINAL)
    private UserType userType;
    @Column
    private int logId;
    @Column(nullable = false, length = 50)
    private String logName;
    @Column(nullable = false, length = 20)
    private String password;

}
