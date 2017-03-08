package com.ComeOnBaby.model;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.ManyToAny;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comments")
public class Comment {

    public Comment() {
    }

    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_blog")
    private Blog blog;


    @ManyToOne
    @JoinColumn(name = "id_user")
    private AppUser appUser;

    @Column(name = "text", nullable = false)
    private String text;



    @Column(name = "datetime", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datetime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public AppUser getAppUser() {
        return appUser;
    }

    public void setAppUser(AppUser appUser) {
        this.appUser = appUser;
    }

    public Comment(Blog blog, AppUser appUser, String text, Date datetime) {
        this.blog = blog;
        this.appUser = appUser;
        this.text = text;
        this.datetime = datetime;
    }


}

