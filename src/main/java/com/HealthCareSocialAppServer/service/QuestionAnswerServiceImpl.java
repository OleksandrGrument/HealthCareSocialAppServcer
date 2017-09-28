package com.HealthCareSocialAppServer.service;

import com.HealthCareSocialAppServer.dao.QuestionAnswerDao;
import com.HealthCareSocialAppServer.model.QuestionAnswer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("questionAnswerService")
public class QuestionAnswerServiceImpl implements QuestionAnswerService {

    private QuestionAnswerDao questionAnswerDao;

    @Autowired(required = true)
    public void setCaseDao(QuestionAnswerDao questionAnswerDao) {
        this.questionAnswerDao = questionAnswerDao;
    }

    @Override
    @Transactional
    public void addNewQuestionAnswer(QuestionAnswer questionAnswer) {
        questionAnswerDao.create(questionAnswer);
    }

    @Override
    @Transactional
    public void updateQuestionAnswer(QuestionAnswer questionAnswer) {
        questionAnswerDao.update(questionAnswer);
    }

    @Override
    @Transactional
    public void deleteQuestionAnswer(QuestionAnswer questionAnswer) {
        questionAnswerDao.delete(questionAnswer);
    }

    @Override
    @Transactional(readOnly = true)
    public List<QuestionAnswer> getAllQuestionAnswers() {
        return questionAnswerDao.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public List<QuestionAnswer> findQA_ByAccessAndID(Long id) { return questionAnswerDao.findQA_ByAccessAndID(id);   }

    @Override
    @Transactional
    public QuestionAnswer getQuestionAnswerById(Long id) {
        return questionAnswerDao.read(id);
    }


}
