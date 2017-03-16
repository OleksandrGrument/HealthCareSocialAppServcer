package com.ComeOnBaby.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "google_cloud_message")
public class GoogleCloudMessageUser {

    public GoogleCloudMessageUser() {
    }

    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id")
    private Long id;

    @Column(name = "cloud_app_key", nullable = false)
    private String cloudAppKey;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCloudAppKey() {
        return cloudAppKey;
    }

    public void setCloudAppKey(String cloudAppKey) {
        this.cloudAppKey = cloudAppKey;
    }


}
