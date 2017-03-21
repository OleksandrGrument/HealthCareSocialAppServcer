package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.AppUser;

import java.util.List;


public interface AppUserDao {
    Long create(AppUser appUser);

    AppUser read(Long id);

    public AppUser findByEmail(String email);

    public AppUser findBySocialID(String loginType, Long socialID);

    void update(AppUser appUser);

    void delete(AppUser appUser);

    List<AppUser> findAll();

    List<AppUser> findAllUserWithNotes();

    void deleteUserById(Long id);
}
