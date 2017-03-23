package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.Blog;
import com.ComeOnBaby.model.Likes;

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


