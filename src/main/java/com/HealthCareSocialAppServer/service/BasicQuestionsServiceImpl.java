package com.HealthCareSocialAppServer.service;

import com.HealthCareSocialAppServer.dao.BasicQuestionsDao;
import com.HealthCareSocialAppServer.model.AppUser;
import com.HealthCareSocialAppServer.model.BasicQuestions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("basicQuestionService")
public class BasicQuestionsServiceImpl implements BasicQuestionsService {

    private BasicQuestionsDao basicQuestionsDao;

    @Autowired(required = true)
    public void setCaseDao(BasicQuestionsDao basicQuestionsDao) {
        this.basicQuestionsDao = basicQuestionsDao;
    }

    @Override
    @Transactional
    public void addNewBasicQuestions(BasicQuestions basicQuestions) {
        basicQuestionsDao.create(basicQuestions);
    }

    @Override
    @Transactional
    public BasicQuestions readBasicQuestionsByUser(AppUser user) {
        return basicQuestionsDao.read(user.getId());
    }

    @Override
    @Transactional
    public void updateBasicQuestions(BasicQuestions basicQuestions) {
        basicQuestionsDao.update(basicQuestions);
    }

    @Override
    @Transactional
    public void deleteBasicQuestions(BasicQuestions basicQuestions) {
        basicQuestionsDao.delete(basicQuestions);
    }

    @Override
    @Transactional(readOnly = true)
    public List<BasicQuestions> getAllBasicQuestions() {
        return basicQuestionsDao.findAll();
    }
}
