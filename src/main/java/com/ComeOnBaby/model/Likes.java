package com.ComeOnBaby.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name="likes")
public class Likes {

    public Likes(){
    }

    @Id
    @NotEmpty
    @Column(name="id_blog", nullable=false)
    private Long idBlog;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_blog", insertable = false, updatable = false)
    private Blog blog;


    @NotEmpty
    @Column(name="id_user", nullable=false)
    private Long idUser;

    @NotEmpty
    @Column(name="like", nullable=false)
    private Boolean like;


    public Long getIdUser() {
        return idUser;
    }

    public void setIdUser(Long idUser) {
        this.idUser = idUser;
    }

    public Boolean getLike() {
        return like;
    }

    public void setLike(Boolean like) {
        this.like = like;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public Long getIdBlog() {
        return idBlog;
    }

    public void setIdBlog(Long idBlog) {
        this.idBlog = idBlog;
    }
}
