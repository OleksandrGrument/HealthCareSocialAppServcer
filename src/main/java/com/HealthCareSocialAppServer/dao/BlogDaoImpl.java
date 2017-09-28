package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.Blog;
import com.HealthCareSocialAppServer.model.Likes;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("blogDao")
public class BlogDaoImpl implements BlogDao {

    private static final Logger logger = LoggerFactory.getLogger(BlogDaoImpl.class);

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Long create(Blog blog) {
        Session session = sessionFactory.getCurrentSession();
        Long id = (Long) session.save(blog);
        return id;
    }

    @Override
    public Blog read(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select blog From Blog blog LEFT JOIN FETCH blog.comments LEFT JOIN FETCH  blog.likes where blog.id  =  :id");
        query.setParameter("id", id);
        Blog blog = (Blog) query.uniqueResult();
        return blog;
    }

    @Override
    public void update(Blog blog) {
        Session session = sessionFactory.getCurrentSession();
        session.update(blog);
        logger.error("BlogService update successfully, BlogService=" + blog);
    }

    @Override
    public void delete(Blog blog) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(blog);
        logger.info("BlogService deleted successfully, BlogService details=" + blog);
    }

    @Override
    public List<Blog> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select distinct blog From Blog blog LEFT JOIN FETCH blog.comments LEFT JOIN FETCH  blog.likes");
        return query.list();
    }

    @Override
    public List<Blog> findBlogByType(Integer type) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select distinct blog From Blog blog LEFT JOIN FETCH blog.comments LEFT JOIN FETCH  blog.likes where blog.type  =  :type");
        query.setParameter("type", type);
        List<Blog> blogs = query.list();
        return blogs;

    }

    @Override
    public Likes findLikeInBlogByIdUsers(Long appUserId, Long blogId) {
        Session session = sessionFactory.getCurrentSession();

        Query selectBlogByIdQuery = session.createQuery("select distinct likes from Likes likes LEFT JOIN FETCH likes.blog LEFT JOIN FETCH  likes.appUser where likes.appUser.id=:id and likes.blog.id =:blogId" );
        selectBlogByIdQuery.setParameter("id" , appUserId);
        selectBlogByIdQuery.setParameter("blogId" , blogId);

        return (Likes) selectBlogByIdQuery.uniqueResult();
    }


}
