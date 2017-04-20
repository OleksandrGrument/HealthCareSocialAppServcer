package com.ComeOnBaby.model;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;


@Entity
@Table(name = "fertilization_guide")
public class FertilizationGuide {

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

    @Column(name = "image")
    private String image;

    @Column(name = "url")
    private String url;

    public FertilizationGuide() {
    }

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

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDateFormat() {
        return new SimpleDateFormat("yyyy-MM-dd").format(date);
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public FertilizationGuide(Long id, String title, Date date, String image, String url) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.image = image;
        this.url = url;
    }

    @Override
    public String toString() {
        return "FertilizationGuide{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", date=" + date +
                ", image='" + image + '\'' +
                '}';
    }
}
