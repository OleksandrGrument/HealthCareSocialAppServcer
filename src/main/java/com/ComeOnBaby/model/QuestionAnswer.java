package com.ComeOnBaby.model;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;


@Entity
@Table(name = "q_a")
public class QuestionAnswer {

    public QuestionAnswer() {
    }


    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id")
    private Long id;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private AppUser appUser;


    @Column(name = "question_date", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date questionDate;


    @Column(name = "answer_date", columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date answerDate;


    @Column(name = "title", nullable = false)
    private String title;


    @Column(name = "text", nullable = false)
    private String questionText;


    @Column(name = "is_access", nullable = false)
    private Boolean isAccess;


    @Column(name = "answer")
    private String answerText;

    @Column(name = "is_answered", nullable = false)
    private Boolean isAnswered;


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

    public Date getQuestionDate() {
        return questionDate;
    }

    public String getQuestionDateFormat() {
        return new SimpleDateFormat("yyyy-MM-dd").format(questionDate);
    }

    public void setQuestionDate(Date questionDate) {
        this.questionDate = questionDate;
    }

    public Date getAnswerDate() {
        return answerDate;
    }

    public String getAnswerDateFormat() {
        if (answerDate != null) {
            return new SimpleDateFormat("yyyy-MM-dd").format(answerDate);
        } else {
            return "";
        }
    }

    public void setAnswerDate(Date answerDate) {
        this.answerDate = answerDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }


    public String getAnswerText() {
        return answerText;
    }

    public void setAnswerText(String answerText) {
        this.answerText = answerText;
    }

    public Boolean isAccess() {
        return isAccess;
    }

    public void setIsAccess(Boolean access) {
        isAccess = access;
    }

    public Boolean isAnswered() {
        return isAnswered;
    }

    public void setIsAnswered(Boolean answered) {
        isAnswered = answered;
    }

}
