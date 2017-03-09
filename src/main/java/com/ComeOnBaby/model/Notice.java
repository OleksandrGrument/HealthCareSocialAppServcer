package com.ComeOnBaby.model;


import jdk.nashorn.internal.ir.annotations.Ignore;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

@Entity
@Table(name = "notice")
public class Notice {

    public Notice() {
    }

    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id")
    private Long id;


    @Column(name = "date", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    @NotEmpty
    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "text")
    private String text;

    @Column(name = "images")
    private String images;



    public void rewriteHtml() {
        StringBuilder sb = new StringBuilder();
        sb.append("<!DOCTYPE html>");
        sb.append("<!--[if IE 8]> <html lang='en' class='ie8 no-js'> <![endif]-->");
        sb.append("<!--[if IE 9]> <html lang='en' class='ie9 no-js'> <![endif]-->");
        sb.append("<!--[if !IE]><!-->");
        sb.append("<html lang='en'>");
        sb.append("<!--<![endif]-->");
        sb.append("<!-- BEGIN HEAD -->");
        sb.append("<head>");
        sb.append("<meta charset='utf-8'/>");
        sb.append("<title>ComeOnBaby</title>");
        //sb.append("<meta http-equiv='X-UA-Compatible' content='IE=edge'>");
        //sb.append("<meta content='width=device-width, initial-scale=1.0' name='viewport'/>");
        sb.append("<meta http-equiv='Content-type' content='text/html; charset=utf-8'>");
        //sb.append("<meta content='' name='description'/>");
        //sb.append("<meta content='' name='author'/>");
        sb.append("</head>");
        sb.append("<body>");
        sb.append("<h1>"+title+"</h1>");
        /*for(ImgText item: imgTexts){
            sb.append("<div>"+item.getText()+"</div>");
        }*/
        sb.append("</body>");
        sb.append("</html>");
  /*      html = sb.toString();*/
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public String getSimpleDate() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy:mm:dd");
        return format.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public Notice(Long id, Date date, String title, String text) {
        this.id = id;
        this.date = date;
        this.title = title;
        this.text = text;

    }

    public Notice(Date date, String title, String text) {

        this.date = date;
        this.title = title;
        this.text = text;

    }

    @Override
    public String toString() {
        return "Notice{" +
                "id=" + id +
                ", date=" + date +
                ", title='" + title + '\'' +
                ", text='" + text + '\'' +
                ", html.length()='" +
                '}';
    }
}
