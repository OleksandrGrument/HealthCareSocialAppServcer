package com.HealthCareSocialAppServer.service;

import com.HealthCareSocialAppServer.model.AppUser;
import com.HealthCareSocialAppServer.model.BasicQuestions;

import java.util.List;


public interface BasicQuestionsService {

    void addNewBasicQuestions(BasicQuestions basicQuestions);

    BasicQuestions readBasicQuestionsByUser(AppUser user);

    void updateBasicQuestions(BasicQuestions basicQuestions);

    void deleteBasicQuestions(BasicQuestions basicQuestions);

    List<BasicQuestions> getAllBasicQuestions();
}
