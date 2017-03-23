package com.ComeOnBaby.model;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name = "likes")
public class Likes {

    public Likes() {
    }

    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id", nullable = false)
    private Long id;


   /* @NotEmpty
    @Column(name = "id_blog", nullable = false)
    private Long idBlog;
*/

    @ManyToOne
    @JoinColumn(name = "id_blog")
    private Blog blog;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private AppUser appUser;

   /* @NotEmpty
    @Column(name = "id_user", nullable = false)
    private Long idUser;*/


/*
    @Column(name = "like")
    private Boolean like;
*/


/*
    public Long getIdUser() {
        return idUser;
    }

    public void setIdUser(Long idUser) {
        this.idUser = idUser;
    }
*/

 /*   public Boolean getLike() {
        return like;
    }

    public void setLike(Boolean like) {
        this.like = like;
    }*/

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public AppUser getAppUser() {
        return appUser;
    }

    public void setAppUser(AppUser appUser) {
        this.appUser = appUser;
    }

    /*    public Long getIdBlog() {
        return idBlog;
    }

    public void setIdBlog(Long idBlog) {
        this.idBlog = idBlog;
    }*/


}
