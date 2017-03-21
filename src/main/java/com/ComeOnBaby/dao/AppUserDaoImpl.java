package com.ComeOnBaby.dao;


import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.model.Blog;
import com.ComeOnBaby.model.Preferences;
import com.ComeOnBaby.util.ImageEditFunctions;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Repository("usersDao")
public class AppUserDaoImpl extends AbstractDao<Integer, AppUser> implements AppUserDao {

    private static final Logger logger = LoggerFactory.getLogger(AppUserDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }


    @Override
    public Long create(AppUser appUser) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(appUser);
        //session.getTransaction().commit();
        return id;
    }

    @Override
    public AppUser read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        AppUser appUser = (AppUser) session.get(AppUser.class, id);
        return appUser;
    }

    @Override
    public AppUser findByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("email", email));
        AppUser user = (AppUser) crit.uniqueResult();
        return user;
    }

    @Override
    public AppUser findBySocialID(String loginType, Long socialID) {
        Session session = sessionFactory.getCurrentSession();
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("loginType", loginType));
        crit.add(Restrictions.eq("socialID", socialID));
        AppUser user = (AppUser) crit.uniqueResult();
        return user;
    }

    @Override
    public void update(AppUser appUser) {
        Session session = sessionFactory.getCurrentSession();
        session.update(appUser);
        logger.error("AppUser update successfully, AppUser=" + appUser);
    }

    @Override
    public void delete(AppUser appUser) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(appUser);
        logger.info("AppUser deleted successfully, AppUser details=" + appUser);
    }

    @Override
    public List<AppUser> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from AppUser");
        return query.list();
    }

    @Override
    public List<AppUser> findAllUserWithNotes(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select appUser from AppUser appUser LEFT JOIN FETCH appUser.notes ");
        return query.list();
    }



    @Override
    public void deleteUserById(Long id){
        Session session = sessionFactory.getCurrentSession();

        Query deleteLikesQuery = session.createQuery("DELETE Likes aLike WHERE aLike.idUser = :id");
        deleteLikesQuery.setParameter("id", id);
        deleteLikesQuery.executeUpdate();


        Query deleteCommentsQuery = session.createQuery("DELETE Comment comment WHERE comment.appUser.id = :id");
        deleteCommentsQuery.setParameter("id", id);
        deleteCommentsQuery.executeUpdate();

        Query findBlogsQuery = session.createQuery("SELECT blog from Blog blog where blog.id_user = :id");
        findBlogsQuery.setParameter("id", id);
        List<Blog> blogs = findBlogsQuery.list();

        for (Blog blog : blogs){
            String images = blog.getImages();
            if(images!=null){
                ArrayList<String> imagesList = new ArrayList(Arrays.asList(images.split("<>")));
                for (String image : imagesList){
                    ImageEditFunctions.deleteImage(image);
                }
            }
        }

        Query deleteBlogQuery = session.createQuery("DELETE  Blog blog WHERE blog.id_user = :id");
        deleteBlogQuery.setParameter("id", id);
        deleteBlogQuery.executeUpdate();



        Query deleteBasisQuestionsQuery = session.createQuery("DELETE BasicQuestions basicQuestions WHERE basicQuestions.user_id = :id");
        deleteBasisQuestionsQuery.setParameter("id", id);
        deleteBasisQuestionsQuery.executeUpdate();


        Query deleteNotesQuery = session.createQuery("DELETE  Note note WHERE note.appUser.id = :id");
        deleteNotesQuery.setParameter("id", id);
        deleteNotesQuery.executeUpdate();


        Query findPreferenceQuery = session.createQuery("SELECT preferences From Preferences preferences WHERE preferences.appUser.id = :id");
        findPreferenceQuery.setParameter("id", id);
        Preferences preference = (Preferences) findPreferenceQuery.uniqueResult();
        String avatarImage = preference.getAvatar();
        if(avatarImage!=null){
            ImageEditFunctions.deleteImage(avatarImage);
        }

        Query deletePreferencesQuery = session.createQuery("DELETE  Preferences preferences WHERE preferences.appUser.id = :id");
        deletePreferencesQuery.setParameter("id", id);
        deletePreferencesQuery.executeUpdate();


        Query deleteQA = session.createQuery("DELETE QuestionAnswer qa WHERE qa.appUser.id = :id");
        deleteQA.setParameter("id", id);
        deleteQA.executeUpdate();



        Query deleteAppUser = session.createQuery("DELETE  AppUser appUser where appUser.id = :id");
        deleteAppUser.setParameter("id", id);
        deleteAppUser.executeUpdate();




    }

}
