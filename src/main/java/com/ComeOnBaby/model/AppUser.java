package com.ComeOnBaby.model;


import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Set;


@Entity
@Table(name = "users")
public class AppUser {

    public AppUser() {
    }

    @Id
    @GeneratedValue(generator = "increment2")
    @GenericGenerator(name = "increment2", strategy = "increment")
    @Column(name = "id")
    private Long id;

    @Column(name = "email", nullable = true)
    private String email;

    @Column(name = "password", nullable = true)
    private String password;

    @Column(name = "social_id", nullable = true)
    private Long socialID;

    @Column(name = "login_type", nullable = false)
    private String loginType;

    @OneToOne(mappedBy = "appUser"/*, fetch = FetchType.EAGER*/)
    private Preferences preferences;

    @OneToMany(mappedBy = "appUser"/*, fetch = FetchType.EAGER*/)
    private Set<Note> notes;

    @OneToMany(mappedBy = "appUser"  /*fetch = FetchType.EAGER*//**//**/)
    private Set<QuestionAnswer> questionAnswers;

    public Long getSocialID() {
        return socialID;
    }

    public void setSocialID(Long socialID) {
        this.socialID = socialID;
    }

    public Set<Note> getNotes() {
        return notes;
    }

    public void setNotes(Set<Note> notes) {
        this.notes = notes;
    }

    public void setPreferences(Preferences preferences) {
        this.preferences = preferences;
    }

    public Preferences getPreferences() {
        return preferences;
    }

    public AppUser(String email, String password, Long socialID, String loginType) {
        this.email = email;
        this.password = password;
        this.socialID = socialID;
        this.loginType = loginType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getSocialId() {
        return socialID;
    }

    public void setSocialId(Long socialId) {
        this.socialID = socialId;
    }

    public String getLoginType() {
        return loginType;
    }

    public void setLoginType(String loginType) {
        this.loginType = loginType;
    }

    public Set<QuestionAnswer> getQuestionAnswers() {
        return questionAnswers;
    }

    public void setQuestionAnswers(Set<QuestionAnswer> questionAnswers) {
        this.questionAnswers = questionAnswers;
    }

    @Override
    public String toString() {
        return "AppUser{" +
                "id=" + id +
                ", email=" + email +
                ", password=" + password +
                ", socialID=" + socialID +
                ", loginType=" + loginType + '}';
    }

}
