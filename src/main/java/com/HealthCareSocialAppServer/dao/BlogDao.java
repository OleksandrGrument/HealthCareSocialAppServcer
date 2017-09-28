package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.Blog;
import com.HealthCareSocialAppServer.model.Likes;

import java.util.List;

public interface BlogDao {
    Long create(Blog blog);

    Blog read(Long id);

    void update(Blog blog);

    void delete(Blog blog);

    List<Blog> findAll();

    List<Blog> findBlogByType(Integer type);

    Likes findLikeInBlogByIdUsers(Long appUserId, Long blogId);
}


