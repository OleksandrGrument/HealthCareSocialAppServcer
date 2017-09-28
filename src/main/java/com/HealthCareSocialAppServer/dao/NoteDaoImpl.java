package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.AppUser;
import com.HealthCareSocialAppServer.model.Note;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository("noteDao")
public class NoteDaoImpl extends AbstractDao<Integer, Note> implements NoteDao {

    private static final Logger logger = LoggerFactory.getLogger(NoteDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }


    @Override
    public Long create(Note note) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(note);
        return id;
    }

    @Override
    public Note read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Note note = (Note) session.get(Note.class, id);
        logger.error("Note findById successfully, Note=" + note);
        return note;
    }


    @Override
    public void update(Note note) {
        Session session = sessionFactory.getCurrentSession();
        session.update(note);
        logger.error("Note update successfully, Note=" + note);
    }

    @Override
    public void delete(Note note) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(note);
        logger.info("Note deleted successfully, Note details=" + note);
    }

    @Override
    public Note findByUserDate(AppUser user, Date date) {

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select distinct note From Note note where note.appUser.id  =  :id and note.date = :date");
        query.setParameter("id", user.getId());
        query.setParameter("date", date);
        return (Note) query.uniqueResult();
    }

    @Override
    public List<Note> findUserNotes(AppUser user) {

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select distinct appUser.notes From AppUser appUser where appUser.id  =  :id");
        query.setParameter("id", user.getId());
        return query.list();
    }

    @Override
    public List<Note> findUserNotesInterval(AppUser user, Date startDate, Date endDate) {

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select distinct note From Note note where note.appUser.id  =  :id and note.date between :startDate and :endDate");
        query.setParameter("id", user.getId());
        query.setParameter("startDate" , startDate);
        query.setParameter("endDate", endDate);


        /*Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("user_id", user.getId()));
        crit.add(Restrictions.between("date", startDate, endDate));
        List<Note> notes = crit.list();*/
        return query.list();
    }

    @Override
    public List<Note> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Note");
        return query.list();
    }


    @Override
    public List<Note> findNotesWithUser(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Note note LEFT JOIN fetch note.appUser");
        return query.list();
    }
}


