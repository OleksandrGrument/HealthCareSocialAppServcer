package com.HealthCareSocialAppServer.service;


import com.HealthCareSocialAppServer.model.Likes;

import java.util.List;

public interface LikesService {

    void addNewLikes(Likes likes);

    void updateLikes(Likes likes);

    void deleteLikes(Likes likes);

    List<Likes> getAllLikes();

}
