package com.ComeOnBaby.enums;

public enum MainPathEnum {

    mainPath("opt/tomcat/webapps/comeonbaby/"),
    mainWebPath("http://192.168.0.13:8080/");

    private String value;

    MainPathEnum(final String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
