package com.HealthCareSocialAppServer.comparator;


import com.HealthCareSocialAppServer.model.Comment;

import java.util.Comparator;

public class CommentByDateComparator implements Comparator<Comment> {

    @Override
    public int compare(Comment comment1, Comment comment2) {
        return comment1.getDatetime().compareTo(comment2.getDatetime());
    }

}
