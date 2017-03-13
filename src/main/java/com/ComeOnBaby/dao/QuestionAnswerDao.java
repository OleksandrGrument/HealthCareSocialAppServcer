package com.ComeOnBaby.dao;



import com.ComeOnBaby.model.QuestionAnswer;

import java.util.List;

/**
 * Created by adm on 1/30/2017.
 */
public interface QuestionAnswerDao {
    Long create(QuestionAnswer questionAnswer);
    QuestionAnswer read(Long id);
    void update(QuestionAnswer questionAnswer);
    void delete(QuestionAnswer questionAnswer);
    List<QuestionAnswer> findAll();
}
