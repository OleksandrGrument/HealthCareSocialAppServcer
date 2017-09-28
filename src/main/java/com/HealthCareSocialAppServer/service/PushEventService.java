package com.HealthCareSocialAppServer.service;


import com.HealthCareSocialAppServer.model.PushEvent;

import java.util.List;

public interface PushEventService {

    void addNewPushEvent(PushEvent pushEvent);

    void updatePushEvent(PushEvent pushEvent);

    PushEvent getPushEventById(Long id);

    void deletePushEvent(PushEvent pushEvent);

    List<PushEvent> getAllPushEvents();
}
