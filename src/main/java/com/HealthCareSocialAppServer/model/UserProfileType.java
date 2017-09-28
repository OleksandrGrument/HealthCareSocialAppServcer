package com.HealthCareSocialAppServer.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable {
    CUSTOMER("CUSTOMER"),
    MANAGER("MANAGER"),
    ADMIN("ADMIN");

    String userProfileType;

    private UserProfileType(String userProfileType) {
        this.userProfileType = userProfileType;
    }

    public String getUserProfileType() {
        return userProfileType;
    }

}
