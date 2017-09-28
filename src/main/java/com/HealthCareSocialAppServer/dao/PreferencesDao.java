package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.Preferences;

import java.util.List;


public interface PreferencesDao {

    Long create(Preferences cases);

    Preferences read(Long id);

    void update(Preferences cases);

    void delete(Preferences cases);

    List<Preferences> findAll();

    Preferences findFirstByUserId(Long id);
}
