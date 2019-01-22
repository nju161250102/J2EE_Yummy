package edu.nju.yummy.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResultModel {

    private boolean success = true;
    private String info = "";
    private Object data = null;

}
