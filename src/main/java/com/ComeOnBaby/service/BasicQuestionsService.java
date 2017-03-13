package com.ComeOnBaby.service;

import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.model.BasicQuestions;

import java.util.List;


public interface BasicQuestionsService {

    void addNewBasicQuestions(BasicQuestions basicQuestions);

    BasicQuestions readBasicQuestionsByUser(AppUser user);

    void updateBasicQuestions(BasicQuestions basicQuestions);

    void deleteBasicQuestions(BasicQuestions basicQuestions);

    List<BasicQuestions> getAllBasicQuestions();
}
