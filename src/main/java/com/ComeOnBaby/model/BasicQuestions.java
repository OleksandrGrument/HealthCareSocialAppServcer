package com.ComeOnBaby.model;


import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "basic_questions")
public class BasicQuestions {

    @Id
    @Column(name="user_id", nullable=false)
    private Long user_id;

    @Column(name="question_1_1")
    private String question_1_1;

    @Column(name="question_1_2")
    private String question_1_2;

    @Column(name="question_1_3_11")
    private String question_1_3_11;

    @Column(name="question_1_3_12")
    private String question_1_3_12;

    @Column(name="question_1_3_13")
    private String question_1_3_13;

    @Column(name="question_1_3_14")
    private String question_1_3_14;

    @Column(name="question_1_3_15")
    private String question_1_3_15;

    @Column(name="question_1_3_16")
    private String question_1_3_16;

    @Column(name="question_1_3_17")
    private String question_1_3_17;

    @Column(name="question_1_3_18")
    private String question_1_3_18;

    @Column(name="question_1_3_19")
    private String question_1_3_19;

    @Column(name="question_1_3_20")
    private String question_1_3_20;

    @Column(name="question_2_21")
    private String question_2_21;

    @Column(name="question_2_22")
    private String question_2_22;

    @Column(name="question_2_23")
    private String question_2_23;

    @Column(name="question_2_24")
    private String question_2_24;

    @Column(name="question_2_25")
    private String question_2_25;

    @Column(name="question_2_26")
    private String question_2_26;

    @Column(name="question_2_27")
    private String question_2_27;

    @Column(name="question_2_28")
    private String question_2_28;

    @Column(name="question_2_29")
    private String question_2_29;

    @Column(name="question_2_30")
    private String question_2_30;

    @Column(name="question_2_31")
    private String question_2_31;

    @Column(name="question_2_32")
    private String question_2_32;

    @Column(name="question_2_33")
    private String question_2_33;

    @Column(name="question_2_34")
    private String question_2_34;

    @Column(name="question_2_35")
    private String question_2_35;

    @Column(name="question_2_36")
    private String question_2_36;

    @Column(name="question_2_37")
    private String question_2_37;

    @Column(name="question_2_38")
    private String question_2_38;

    @Column(name="question_2_39")
    private String question_2_39;

    @Column(name="question_2_40")
    private String question_2_40;

    @Column(name="question_3_41")
    private String question_3_41;

    @Column(name="question_3_42")
    private String question_3_42;

    @Column(name="question_3_43")
    private String question_3_43;

    @Column(name="question_3_44")
    private String question_3_44;

    @Column(name="question_3_45")
    private String question_3_45;

    @Column(name="question_3_46")
    private String question_3_46;

    @Column(name="question_3_47")
    private String question_3_47;

    @Column(name="question_3_48")
    private String question_3_48;

    @Column(name="question_3_49")
    private String question_3_49;

    @Column(name="question_3_50")
    private String question_3_50;

    @Column(name="question_3_51")
    private String question_3_51;

    @Column(name="question_3_52")
    private String question_3_52;

    @Column(name="question_3_53")
    private String question_3_53;

    @Column(name="question_3_54")
    private String question_3_54;

    @Column(name="question_3_55")
    private String question_3_55;

    @Column(name="question_3_56")
    private String question_3_56;

    @Column(name="question_3_57")
    private String question_3_57;

    public BasicQuestions(){

    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public String getQuestion_1_1() {
        return question_1_1;
    }

    public String getQuestion_1_2() {
        return question_1_2;
    }

    public String getQuestion_1_3_11() {
        return question_1_3_11;
    }

    public String getQuestion_1_3_12() {
        return question_1_3_12;
    }

    public String getQuestion_1_3_13() {
        return question_1_3_13;
    }

    public String getQuestion_1_3_14() {
        return question_1_3_14;
    }

    public String getQuestion_1_3_15() {
        return question_1_3_15;
    }

    public String getQuestion_1_3_16() {
        return question_1_3_16;
    }

    public String getQuestion_1_3_17() {
        return question_1_3_17;
    }

    public String getQuestion_1_3_18() {
        return question_1_3_18;
    }

    public String getQuestion_1_3_19() {
        return question_1_3_19;
    }

    public String getQuestion_1_3_20() {
        return question_1_3_20;
    }

    public String getQuestion_2_21() {
        return question_2_21;
    }

    public String getQuestion_2_22() {
        return question_2_22;
    }

    public String getQuestion_2_23() {
        return question_2_23;
    }

    public String getQuestion_2_24() {
        return question_2_24;
    }

    public String getQuestion_2_25() {
        return question_2_25;
    }

    public String getQuestion_2_26() {
        return question_2_26;
    }

    public String getQuestion_2_27() {
        return question_2_27;
    }

    public String getQuestion_2_28() {
        return question_2_28;
    }

    public String getQuestion_2_29() {
        return question_2_29;
    }

    public String getQuestion_2_30() {
        return question_2_30;
    }

    public String getQuestion_2_31() {
        return question_2_31;
    }

    public String getQuestion_2_32() {
        return question_2_32;
    }

    public String getQuestion_2_33() {
        return question_2_33;
    }

    public String getQuestion_2_34() {
        return question_2_34;
    }

    public String getQuestion_2_35() {
        return question_2_35;
    }

    public String getQuestion_2_36() {
        return question_2_36;
    }

    public String getQuestion_2_37() {
        return question_2_37;
    }

    public String getQuestion_2_38() {
        return question_2_38;
    }

    public String getQuestion_2_39() {
        return question_2_39;
    }

    public String getQuestion_2_40() {
        return question_2_40;
    }

    public String getQuestion_3_41() {
        return question_3_41;
    }

    public String getQuestion_3_42() {
        return question_3_42;
    }

    public String getQuestion_3_43() {
        return question_3_43;
    }

    public String getQuestion_3_44() {
        return question_3_44;
    }

    public String getQuestion_3_45() {
        return question_3_45;
    }

    public String getQuestion_3_46() {
        return question_3_46;
    }

    public String getQuestion_3_47() {
        return question_3_47;
    }

    public String getQuestion_3_48() {
        return question_3_48;
    }

    public String getQuestion_3_49() {
        return question_3_49;
    }

    public String getQuestion_3_50() {
        return question_3_50;
    }

    public String getQuestion_3_51() {
        return question_3_51;
    }

    public String getQuestion_3_52() {
        return question_3_52;
    }

    public String getQuestion_3_53() {
        return question_3_53;
    }

    public String getQuestion_3_54() {
        return question_3_54;
    }

    public String getQuestion_3_55() {
        return question_3_55;
    }

    public String getQuestion_3_56() {
        return question_3_56;
    }

    public String getQuestion_3_57() {
        return question_3_57;
    }

    public void setQuestion_1_1(String question_1_1) {
        this.question_1_1 = question_1_1;
    }

    public void setQuestion_1_2(String question_1_2) {
        this.question_1_2 = question_1_2;
    }

    public void setQuestion_1_3_11(String question_1_3_11) {
        this.question_1_3_11 = question_1_3_11;
    }

    public void setQuestion_1_3_18(String question_1_3_18) {
        this.question_1_3_18 = question_1_3_18;
    }

    public void setQuestion_1_3_12(String question_1_3_12) {
        this.question_1_3_12 = question_1_3_12;
    }

    public void setQuestion_1_3_13(String question_1_3_13) {
        this.question_1_3_13 = question_1_3_13;
    }

    public void setQuestion_1_3_14(String question_1_3_14) {
        this.question_1_3_14 = question_1_3_14;
    }

    public void setQuestion_1_3_15(String question_1_3_15) {
        this.question_1_3_15 = question_1_3_15;
    }

    public void setQuestion_1_3_16(String question_1_3_16) {
        this.question_1_3_16 = question_1_3_16;
    }

    public void setQuestion_1_3_17(String question_1_3_17) {
        this.question_1_3_17 = question_1_3_17;
    }

    public void setQuestion_1_3_19(String question_1_3_19) {
        this.question_1_3_19 = question_1_3_19;
    }

    public void setQuestion_1_3_20(String question_1_3_20) {
        this.question_1_3_20 = question_1_3_20;
    }

    public void setQuestion_2_21(String question_2_21) {
        this.question_2_21 = question_2_21;
    }

    public void setQuestion_2_22(String question_2_22) {
        this.question_2_22 = question_2_22;
    }

    public void setQuestion_2_23(String question_2_23) {
        this.question_2_23 = question_2_23;
    }

    public void setQuestion_2_24(String question_2_24) {
        this.question_2_24 = question_2_24;
    }

    public void setQuestion_2_25(String question_2_25) {
        this.question_2_25 = question_2_25;
    }

    public void setQuestion_2_26(String question_2_26) {
        this.question_2_26 = question_2_26;
    }

    public void setQuestion_2_27(String question_2_27) {
        this.question_2_27 = question_2_27;
    }

    public void setQuestion_2_28(String question_2_28) {
        this.question_2_28 = question_2_28;
    }

    public void setQuestion_2_29(String question_2_29) {
        this.question_2_29 = question_2_29;
    }

    public void setQuestion_2_30(String question_2_30) {
        this.question_2_30 = question_2_30;
    }

    public void setQuestion_2_31(String question_2_31) {
        this.question_2_31 = question_2_31;
    }

    public void setQuestion_2_32(String question_2_32) {
        this.question_2_32 = question_2_32;
    }

    public void setQuestion_2_33(String question_2_33) {
        this.question_2_33 = question_2_33;
    }

    public void setQuestion_2_34(String question_2_34) {
        this.question_2_34 = question_2_34;
    }

    public void setQuestion_2_35(String question_2_35) {
        this.question_2_35 = question_2_35;
    }

    public void setQuestion_2_36(String question_2_36) {
        this.question_2_36 = question_2_36;
    }

    public void setQuestion_2_37(String question_2_37) {
        this.question_2_37 = question_2_37;
    }

    public void setQuestion_2_38(String question_2_38) {
        this.question_2_38 = question_2_38;
    }

    public void setQuestion_2_39(String question_2_39) {
        this.question_2_39 = question_2_39;
    }

    public void setQuestion_2_40(String question_2_40) {
        this.question_2_40 = question_2_40;
    }

    public void setQuestion_3_41(String question_3_41) {
        this.question_3_41 = question_3_41;
    }

    public void setQuestion_3_42(String question_3_42) {
        this.question_3_42 = question_3_42;
    }

    public void setQuestion_3_43(String question_3_43) {
        this.question_3_43 = question_3_43;
    }

    public void setQuestion_3_44(String question_3_44) {
        this.question_3_44 = question_3_44;
    }

    public void setQuestion_3_45(String question_3_45) {
        this.question_3_45 = question_3_45;
    }

    public void setQuestion_3_46(String question_3_46) {
        this.question_3_46 = question_3_46;
    }

    public void setQuestion_3_47(String question_3_47) {
        this.question_3_47 = question_3_47;
    }

    public void setQuestion_3_48(String question_3_48) {
        this.question_3_48 = question_3_48;
    }

    public void setQuestion_3_49(String question_3_49) {
        this.question_3_49 = question_3_49;
    }

    public void setQuestion_3_50(String question_3_50) {
        this.question_3_50 = question_3_50;
    }

    public void setQuestion_3_51(String question_3_51) {
        this.question_3_51 = question_3_51;
    }

    public void setQuestion_3_52(String question_3_52) {
        this.question_3_52 = question_3_52;
    }

    public void setQuestion_3_53(String question_3_53) {
        this.question_3_53 = question_3_53;
    }

    public void setQuestion_3_54(String question_3_54) {
        this.question_3_54 = question_3_54;
    }

    public void setQuestion_3_55(String question_3_55) {
        this.question_3_55 = question_3_55;
    }

    public void setQuestion_3_56(String question_3_56) {
        this.question_3_56 = question_3_56;
    }

    public void setQuestion_3_57(String question_3_57) {
        this.question_3_57 = question_3_57;
    }

    public BasicQuestions(Long user_id, String question_1_1, String question_1_2, String question_1_3_11, String question_1_3_12, String question_1_3_13, String question_1_3_14, String question_1_3_15, String question_1_3_16, String question_1_3_17, String question_1_3_18, String question_1_3_19, String question_1_3_20, String question_2_21, String question_2_22, String question_2_23, String question_2_24, String question_2_25, String question_2_26, String question_2_27, String question_2_28, String question_2_29, String question_2_30, String question_2_31, String question_2_32, String question_2_33, String question_2_34, String question_2_35, String question_2_36, String question_2_37, String question_2_38, String question_2_39, String question_2_40, String question_3_41, String question_3_42, String question_3_43, String question_3_44, String question_3_45, String question_3_46, String question_3_47, String question_3_48, String question_3_49, String question_3_50, String question_3_51, String question_3_52, String question_3_53, String question_3_54, String question_3_55, String question_3_56, String question_3_57) {
        this.user_id = user_id;
        this.question_1_1 = question_1_1;
        this.question_1_2 = question_1_2;
        this.question_1_3_11 = question_1_3_11;
        this.question_1_3_12 = question_1_3_12;
        this.question_1_3_13 = question_1_3_13;
        this.question_1_3_14 = question_1_3_14;
        this.question_1_3_15 = question_1_3_15;
        this.question_1_3_16 = question_1_3_16;
        this.question_1_3_17 = question_1_3_17;
        this.question_1_3_18 = question_1_3_18;
        this.question_1_3_19 = question_1_3_19;
        this.question_1_3_20 = question_1_3_20;
        this.question_2_21 = question_2_21;
        this.question_2_22 = question_2_22;
        this.question_2_23 = question_2_23;
        this.question_2_24 = question_2_24;
        this.question_2_25 = question_2_25;
        this.question_2_26 = question_2_26;
        this.question_2_27 = question_2_27;
        this.question_2_28 = question_2_28;
        this.question_2_29 = question_2_29;
        this.question_2_30 = question_2_30;
        this.question_2_31 = question_2_31;
        this.question_2_32 = question_2_32;
        this.question_2_33 = question_2_33;
        this.question_2_34 = question_2_34;
        this.question_2_35 = question_2_35;
        this.question_2_36 = question_2_36;
        this.question_2_37 = question_2_37;
        this.question_2_38 = question_2_38;
        this.question_2_39 = question_2_39;
        this.question_2_40 = question_2_40;
        this.question_3_41 = question_3_41;
        this.question_3_42 = question_3_42;
        this.question_3_43 = question_3_43;
        this.question_3_44 = question_3_44;
        this.question_3_45 = question_3_45;
        this.question_3_46 = question_3_46;
        this.question_3_47 = question_3_47;
        this.question_3_48 = question_3_48;
        this.question_3_49 = question_3_49;
        this.question_3_50 = question_3_50;
        this.question_3_51 = question_3_51;
        this.question_3_52 = question_3_52;
        this.question_3_53 = question_3_53;
        this.question_3_54 = question_3_54;
        this.question_3_55 = question_3_55;
        this.question_3_56 = question_3_56;
        this.question_3_57 = question_3_57;
    }

    @Override
    public String toString() {
        return "BasicQuestions{" +
                "user_id=" + user_id +
                ", question_1_1='" + question_1_1 + '\'' +
                ", question_1_2='" + question_1_2 + '\'' +
                ", question_1_3_11='" + question_1_3_11 + '\'' +
                ", question_1_3_12='" + question_1_3_12 + '\'' +
                ", question_1_3_13='" + question_1_3_13 + '\'' +
                ", question_1_3_14='" + question_1_3_14 + '\'' +
                ", question_1_3_15='" + question_1_3_15 + '\'' +
                ", question_1_3_16='" + question_1_3_16 + '\'' +
                ", question_1_3_17='" + question_1_3_17 + '\'' +
                ", question_1_3_18='" + question_1_3_18 + '\'' +
                ", question_1_3_19='" + question_1_3_19 + '\'' +
                ", question_1_3_20='" + question_1_3_20 + '\'' +
                ", question_2_21='" + question_2_21 + '\'' +
                ", question_2_22='" + question_2_22 + '\'' +
                ", question_2_23='" + question_2_23 + '\'' +
                ", question_2_24='" + question_2_24 + '\'' +
                ", question_2_25='" + question_2_25 + '\'' +
                ", question_2_26='" + question_2_26 + '\'' +
                ", question_2_27='" + question_2_27 + '\'' +
                ", question_2_28='" + question_2_28 + '\'' +
                ", question_2_29='" + question_2_29 + '\'' +
                ", question_2_30='" + question_2_30 + '\'' +
                ", question_2_31='" + question_2_31 + '\'' +
                ", question_2_32='" + question_2_32 + '\'' +
                ", question_2_33='" + question_2_33 + '\'' +
                ", question_2_34='" + question_2_34 + '\'' +
                ", question_2_35='" + question_2_35 + '\'' +
                ", question_2_36='" + question_2_36 + '\'' +
                ", question_2_37='" + question_2_37 + '\'' +
                ", question_2_38='" + question_2_38 + '\'' +
                ", question_2_39='" + question_2_39 + '\'' +
                ", question_2_40='" + question_2_40 + '\'' +
                ", question_3_41='" + question_3_41 + '\'' +
                ", question_3_42='" + question_3_42 + '\'' +
                ", question_3_43='" + question_3_43 + '\'' +
                ", question_3_44='" + question_3_44 + '\'' +
                ", question_3_45='" + question_3_45 + '\'' +
                ", question_3_46='" + question_3_46 + '\'' +
                ", question_3_47='" + question_3_47 + '\'' +
                ", question_3_48='" + question_3_48 + '\'' +
                ", question_3_49='" + question_3_49 + '\'' +
                ", question_3_50='" + question_3_50 + '\'' +
                ", question_3_51='" + question_3_51 + '\'' +
                ", question_3_52='" + question_3_52 + '\'' +
                ", question_3_53='" + question_3_53 + '\'' +
                ", question_3_54='" + question_3_54 + '\'' +
                ", question_3_55='" + question_3_55 + '\'' +
                ", question_3_56='" + question_3_56 + '\'' +
                ", question_3_57='" + question_3_57 + '\'' +
                '}';
    }
}
