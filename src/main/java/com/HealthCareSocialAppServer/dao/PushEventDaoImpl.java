package com.HealthCareSocialAppServer.dao;

import com.HealthCareSocialAppServer.model.PushEvent;
import com.itextpdf.text.log.Logger;
import com.itextpdf.text.log.LoggerFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("pushEventDao")
public class PushEventDaoImpl implements PushEventDao {

    private static final Logger logger = LoggerFactory.getLogger(PushEventDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public Long create(PushEvent pushEvent) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(pushEvent);
        return id;
    }

    @Override
    public PushEvent read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        PushEvent pushEvent = (PushEvent) session.get(PushEvent.class, id);
        return pushEvent;
    }

    @Override
    public void update(PushEvent pushEvent) {
        Session session = sessionFactory.getCurrentSession();
        session.update(pushEvent);
        System.out.println("PushEvent update successfully, PushEvent=" + pushEvent);
    }

    @Override
    public void delete(PushEvent pushEvent) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(pushEvent);
        logger.info("PushEvent deleted successfully, PushEvent details=" + pushEvent);
    }

    @Override
    public List<PushEvent> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from PushEvent");
        return query.list();
    }

}
