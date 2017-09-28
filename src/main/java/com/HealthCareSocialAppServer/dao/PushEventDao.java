package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.PushEvent;

import java.util.List;

public interface PushEventDao {

    Long create(PushEvent pushEvent);

    PushEvent read(Long id);

    void update(PushEvent pushEvent);

    void delete(PushEvent pushEvent);

    List<PushEvent> findAll();
}
