package edu.nju.yummy.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class AddressModel {

    private int id;
    private String detail;
    private boolean defaultAddress;

}
