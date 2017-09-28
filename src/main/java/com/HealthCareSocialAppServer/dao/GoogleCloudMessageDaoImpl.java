package com.HealthCareSocialAppServer.dao;

import com.HealthCareSocialAppServer.model.GoogleCloudMessageUser;
import com.itextpdf.text.log.Logger;
import com.itextpdf.text.log.LoggerFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("googleCloudMessageDao")
public class GoogleCloudMessageDaoImpl implements GoogleCloudMessageDao {

    private static final Logger logger = LoggerFactory.getLogger(LikesDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Long create(GoogleCloudMessageUser googleCloudMessageUser) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(googleCloudMessageUser);
        return id;
    }

    @Override
    public GoogleCloudMessageUser read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        GoogleCloudMessageUser googleCloudMessageUser = (GoogleCloudMessageUser) session.get(GoogleCloudMessageUser.class, id);
        return googleCloudMessageUser;
    }

    @Override
    public void update(GoogleCloudMessageUser googleCloudMessageUser) {
        Session session = sessionFactory.getCurrentSession();
        session.update(googleCloudMessageUser);
        logger.error("GoogleCloudMessageUser update successfully, GoogleCloudMessageUser=" + googleCloudMessageUser);
    }

    @Override
    public void delete(GoogleCloudMessageUser googleCloudMessageUser) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(googleCloudMessageUser);
        logger.info("GoogleCloudMessageUser deleted successfully, GoogleCloudMessageUser details=" + googleCloudMessageUser);
    }

    @Override
    public List<GoogleCloudMessageUser> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from GoogleCloudMessageUser");
        return query.list();
    }

    @Override
    public List <String> findAllKeys(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select distinct cloudAppKey from GoogleCloudMessageUser");
        return query.list();
    }
}
