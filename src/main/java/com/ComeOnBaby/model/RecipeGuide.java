package com.ComeOnBaby.model;


import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "recipe_guide")
public class RecipeGuide {

    public RecipeGuide() {
    }


    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id")
    private Long id;

    @NotEmpty
    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "date", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    @Column(name = "image_thumbnail")
    private String imageThumbnail;

    @Column(name = "url_naver")
    private String urlNaver;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public String getDateFormat() {
        return new SimpleDateFormat("yyyy-MM-dd").format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getImageThumbnail() {
        return imageThumbnail;
    }

    public void setImageThumbnail(String imageThumbnail) {
        this.imageThumbnail = imageThumbnail;
    }

    public String getUrlNaver() {
        return urlNaver;
    }

    public void setUrlNaver(String urlNaver) {
        this.urlNaver = urlNaver;
    }

    public RecipeGuide(Long id, String title, Date date, String imageThumbnail, String urlNaver) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.imageThumbnail = imageThumbnail;
        this.urlNaver = urlNaver;
    }


}
