package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.Preferences;

import java.util.List;


public interface PreferencesDao {

    Long create(Preferences cases);

    Preferences read(Long id);

    void update(Preferences cases);

    void delete(Preferences cases);

    List<Preferences> findAll();

    Preferences findFirstByUserId(Long id);
}
