package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.Likes;

import java.util.List;


public interface LikesDao {

    Long create(Likes likes);

    Likes read(Long id);

    void update(Likes likes);

    void delete(Likes likes);

    List<Likes> findAll();
}
