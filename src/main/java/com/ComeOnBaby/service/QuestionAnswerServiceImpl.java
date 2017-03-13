package com.ComeOnBaby.service;

import com.ComeOnBaby.dao.QuestionAnswerDao;
import com.ComeOnBaby.model.QuestionAnswer;
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
    @Transactional
    public QuestionAnswer getQuestionAnswerById(Long id) {
        return questionAnswerDao.read(id);
    }
}
