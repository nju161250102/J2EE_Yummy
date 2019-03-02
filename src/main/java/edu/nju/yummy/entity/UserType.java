package edu.nju.yummy.entity;

public enum UserType {

    ADMIN("admin"),
    USER("user"),
    RESTAURANT("restaurant");

    private String name;

    UserType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
