package com.HealthCareSocialAppServer.service;

import com.HealthCareSocialAppServer.dao.GoogleCloudMessageDao;
import com.HealthCareSocialAppServer.model.GoogleCloudMessageUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("googleCloudMessageService")
public class GoogleCloudMessageServiceImpl implements GoogleCloudMessageService {

    private GoogleCloudMessageDao googleCloudMessageDao;

    @Autowired(required = true)
    public void setGoogleCloudMessageDao(GoogleCloudMessageDao googleCloudMessageDao) {
        this.googleCloudMessageDao = googleCloudMessageDao;
    }

    @Override
    @Transactional
    public void addNewGoogleCloudMessage(GoogleCloudMessageUser googleCloudMessageUser) {
        googleCloudMessageDao.create(googleCloudMessageUser);
    }

    @Override
    @Transactional
    public void updateGoogleCloudMessage(GoogleCloudMessageUser googleCloudMessageUser) {
        googleCloudMessageDao.update(googleCloudMessageUser);
    }

    @Override
    @Transactional
    public void deleteGoogleCloudMessage(GoogleCloudMessageUser googleCloudMessageUser) {
        googleCloudMessageDao.delete(googleCloudMessageUser);
    }

    @Override
    @Transactional(readOnly = true)
    public List<GoogleCloudMessageUser> getAllGoogleCloudMessages() {
        return googleCloudMessageDao.findAll();
    }

    @Override
    @Transactional
    public List<String> getAllKeys(){
        return googleCloudMessageDao.findAllKeys();
    }
}
