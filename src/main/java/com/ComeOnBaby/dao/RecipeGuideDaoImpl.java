package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.RecipeGuide;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("recipe_guideDao")
public class RecipeGuideDaoImpl implements RecipeGuideDao {

    private static final Logger logger = LoggerFactory.getLogger(RecipeGuideDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }


    @Override
    public Long create(RecipeGuide aRecipe_guide) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(aRecipe_guide);
        return id;
    }

    @Override
    public RecipeGuide read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        RecipeGuide aRecipe_guide = (RecipeGuide) session.get(RecipeGuide.class, id);
        return aRecipe_guide;
    }

    @Override
    public void update(RecipeGuide aRecipe_guide) {
        Session session = sessionFactory.getCurrentSession();
        session.update(aRecipe_guide);
        //session.getTransaction().commit();
        logger.error("RecipeGuide update successfully, RecipeGuide=" + aRecipe_guide);
    }

    @Override
    public void delete(RecipeGuide aRecipe_guide) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(aRecipe_guide);
        logger.info("RecipeGuide deleted successfully, RecipeGuide details=" + aRecipe_guide);
    }

    @Override
    public List<RecipeGuide> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from RecipeGuide");
        return query.list();
    }

}
