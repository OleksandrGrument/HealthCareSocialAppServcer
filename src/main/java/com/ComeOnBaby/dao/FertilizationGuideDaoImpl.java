package com.ComeOnBaby.dao;



import com.ComeOnBaby.model.FertilizationGuide;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("fertilizationGuideDao")
public class FertilizationGuideDaoImpl implements FertilizationGuideDao {

    private static final Logger logger = LoggerFactory.getLogger(FertilizationGuideDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }


    @Override
    public Long create(FertilizationGuide fertilizationGuide) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(fertilizationGuide);
        return id;
    }

    @Override
    public FertilizationGuide read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        FertilizationGuide fertilizationGuide = (FertilizationGuide) session.get(FertilizationGuide.class, id);
        logger.error("CommentsService findById successfully, CommentsService=" + fertilizationGuide);
        return fertilizationGuide;
    }

    @Override
    public void update(FertilizationGuide fertilizationGuide) {
        Session session = sessionFactory.getCurrentSession();
        session.update(fertilizationGuide);
        logger.error("FertilizationGuide update successfully, FertilizationGuide=" + fertilizationGuide);
    }

    @Override
    public void delete(FertilizationGuide fertilizationGuide) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(fertilizationGuide);
        logger.info("FertilizationGuide deleted successfully, FertilizationGuide details=" + fertilizationGuide);
    }

    @Override
    public List<FertilizationGuide> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query =  session.createQuery("from FertilizationGuide");
        return query.list();
    }
}
