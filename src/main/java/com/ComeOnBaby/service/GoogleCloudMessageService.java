package com.ComeOnBaby.service;


import com.ComeOnBaby.model.GoogleCloudMessageUser;

import java.util.List;

public interface GoogleCloudMessageService {

    void addNewGoogleCloudMessage(GoogleCloudMessageUser googleCloudMessageUser);

    void updateGoogleCloudMessage(GoogleCloudMessageUser googleCloudMessageUser);

    void deleteGoogleCloudMessage(GoogleCloudMessageUser googleCloudMessageUser);

    List<GoogleCloudMessageUser> getAllGoogleCloudMessages();

    List<String> getAllKeys();
}
