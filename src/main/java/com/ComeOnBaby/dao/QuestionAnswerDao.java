package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.QuestionAnswer;

import java.util.List;


public interface QuestionAnswerDao {

    Long create(QuestionAnswer questionAnswer);

    QuestionAnswer read(Long id);

    void update(QuestionAnswer questionAnswer);

    void delete(QuestionAnswer questionAnswer);

    List<QuestionAnswer> findAll();
}
