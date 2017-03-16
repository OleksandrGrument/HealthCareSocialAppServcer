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


    @NotEmpty
    @Column(name = "id_user", nullable = false)
    private Long idUser;

    @NotEmpty
    @Column(name = "like", nullable = false)
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /*    public Long getIdBlog() {
        return idBlog;
    }

    public void setIdBlog(Long idBlog) {
        this.idBlog = idBlog;
    }*/
}
