package com.HealthCareSocialAppServer.service;


import com.HealthCareSocialAppServer.model.AppUser;

import java.util.List;

public interface AppUserService {

    Long addNewUser(AppUser users);

    AppUser findById(Long id);

    AppUser findByEmail(String email);

    AppUser findBySocialID(String loginType, Long socialID);

    void updateUser(AppUser users);

    void deleteUser(AppUser users);

    List<AppUser> getAllUsers();

    List<AppUser> findAllUserWithNotes();

    void deleteUserById(Long id);
}
