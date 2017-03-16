package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.QuestionAnswer;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("questionAnswerDao")
public class QuestionAnswerDaoImpl implements QuestionAnswerDao {

    private static final Logger logger = LoggerFactory.getLogger(QuestionAnswerDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }


    @Override
    public Long create(QuestionAnswer aQuestionAnswer) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(aQuestionAnswer);
        return id;
    }

    @Override
    public QuestionAnswer read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        QuestionAnswer aQuestionAnswer = (QuestionAnswer) session.get(QuestionAnswer.class, id);
        return aQuestionAnswer;
    }

    @Override
    public void update(QuestionAnswer aQuestionAnswer) {
        Session session = sessionFactory.getCurrentSession();
        session.update(aQuestionAnswer);
        logger.error("QuestionAnswerService update successfully, QuestionAnswerService=" + aQuestionAnswer);
    }

    @Override
    public void delete(QuestionAnswer aQuestionAnswer) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(aQuestionAnswer);
        logger.info("QuestionAnswerService deleted successfully, QuestionAnswerService details=" + aQuestionAnswer);
    }

    @Override
    public List<QuestionAnswer> findQA_ByAccessAndID(Long appUserId)    {
        Session session = sessionFactory.getCurrentSession();


        Query selectAllWithAccessQuery = session.createQuery("from QuestionAnswer questionAndAndswer where questionAndAndswer.isAccess =:access");
        selectAllWithAccessQuery.setParameter("access" , false);

      /*  Query selectAllUnAccessedQuestions = session.createQuery("select appUser.questionAnswers from AppUser appUser where appUser.id=:id selecthaving appUser.questionAnswers.isAccess =:access" );*/
        Query selectAllUnAccessedQuestions = session.createQuery("select questionAnswer from QuestionAnswer questionAnswer where questionAnswer.appUser.id=:id and questionAnswer.isAccess =:access" );
        selectAllUnAccessedQuestions.setParameter("id" , appUserId);
        selectAllUnAccessedQuestions.setParameter("access" , true);


        List<QuestionAnswer> questionAnswers = selectAllWithAccessQuery.list();
        questionAnswers.addAll(selectAllUnAccessedQuestions.list());

        return questionAnswers;

    }

    @Override
    public List<QuestionAnswer> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from QuestionAnswer");
        return query.list();
    }

}
