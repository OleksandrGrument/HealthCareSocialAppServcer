package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.GoogleCloudMessageUser;

import java.util.List;

public interface GoogleCloudMessageDao {

    Long create(GoogleCloudMessageUser cloudMessage);

    GoogleCloudMessageUser read(Long id);

    void update(GoogleCloudMessageUser cloudMessage);

    void delete(GoogleCloudMessageUser cloudMessage);

    List<GoogleCloudMessageUser> findAll();

    List<String> findAllKeys();
}
