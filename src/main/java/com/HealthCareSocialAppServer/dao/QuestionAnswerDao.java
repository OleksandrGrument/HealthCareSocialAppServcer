package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.QuestionAnswer;

import java.util.List;


public interface QuestionAnswerDao {

    Long create(QuestionAnswer questionAnswer);

    QuestionAnswer read(Long id);

    void update(QuestionAnswer questionAnswer);

    void delete(QuestionAnswer questionAnswer);

    List<QuestionAnswer> findQA_ByAccessAndID(Long id);

    List<QuestionAnswer> findAll();
}
