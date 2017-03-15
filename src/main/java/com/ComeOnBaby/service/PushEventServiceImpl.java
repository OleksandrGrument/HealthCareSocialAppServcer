package com.ComeOnBaby.service;


import com.ComeOnBaby.dao.PushEventDao;
import com.ComeOnBaby.model.PushEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("pushEventService")
public class PushEventServiceImpl implements PushEventService {

    private PushEventDao pushEventDao;

    @Autowired
    public void setPushEventDao(PushEventDao pushEventDao) {
        this.pushEventDao = pushEventDao;
    }

    @Override
    @Transactional
    public void addNewPushEvent(PushEvent pushEvent) {
        pushEventDao.create(pushEvent);
    }

    @Override
    @Transactional
    public void updatePushEvent(PushEvent pushEvent) {
        pushEventDao.update(pushEvent);
    }

    @Override
    @Transactional
    public PushEvent getPushEventById(Long id) {
        return pushEventDao.read(id);
    }

    @Override
    @Transactional
    public void deletePushEvent(PushEvent pushEvent) {
        pushEventDao.delete(pushEvent);
    }

    @Override
    @Transactional(readOnly = true)
    public List<PushEvent> getAllPushEvents() {
        return pushEventDao.findAll();
    }
}
