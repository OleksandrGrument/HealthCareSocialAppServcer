package com.HealthCareSocialAppServer.service;


import com.HealthCareSocialAppServer.model.Comment;

import java.util.List;

public interface CommentsService {

    void addNewComments(Comment comment);

    void updateComments(Comment comment);

    void deleteComments(Comment comment);

    List<Comment> getAllComments();

    List<Comment> findByBlogID(Long blogID);

    Comment findCommentById(Long commentId);
}
