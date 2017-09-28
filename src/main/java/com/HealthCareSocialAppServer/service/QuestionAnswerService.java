package com.HealthCareSocialAppServer.service;


import com.HealthCareSocialAppServer.model.QuestionAnswer;

import java.util.List;

public interface QuestionAnswerService {

    void addNewQuestionAnswer(QuestionAnswer questionAnswer);

    void updateQuestionAnswer(QuestionAnswer questionAnswer);

    void deleteQuestionAnswer(QuestionAnswer questionAnswer);

    List<QuestionAnswer> getAllQuestionAnswers();

    List<QuestionAnswer> findQA_ByAccessAndID(Long id);

    QuestionAnswer getQuestionAnswerById(Long id);

}
