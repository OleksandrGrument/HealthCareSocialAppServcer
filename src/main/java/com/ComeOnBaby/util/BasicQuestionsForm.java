package com.ComeOnBaby.util;


import com.ComeOnBaby.model.BasicQuestions;

import java.util.ArrayList;
import java.util.List;

public class BasicQuestionsForm {

    private BasicQuestions basicQuestions;


    public BasicQuestionsForm(BasicQuestions basicQuestions) {
        this.basicQuestions = basicQuestions;
    }

    public List<String> question1() {
        List<String> listQuestion1 = new ArrayList<>();
        String value = basicQuestions.getQuestion_1_1();

        switch (value) {
            default:
                listQuestion1.add("checked");
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("");
                break;
            case "1-2":
                listQuestion1.add("");
                listQuestion1.add("checked");
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("");
                break;
            case "2-3":
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("checked");
                listQuestion1.add("");
                listQuestion1.add("");
                break;
            case "3-5":
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("checked");
                listQuestion1.add("");
                break;
            case "5+":
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("");
                listQuestion1.add("checked");
                break;
        }
        return listQuestion1;
    }

    public List<String> question2() {
        List<String> listQuestion2 = new ArrayList<>();
        String value = basicQuestions.getQuestion_1_2();

        switch (value) {
            default:
                listQuestion2.add("checked");
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("");
                break;
            case "1":
                listQuestion2.add("");
                listQuestion2.add("checked");
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("");
                break;
            case "2":
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("checked");
                listQuestion2.add("");
                listQuestion2.add("");
                break;
            case "3":
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("checked");
                listQuestion2.add("");
                break;
            case "4+":
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("");
                listQuestion2.add("checked");
                break;
        }
        return listQuestion2;
    }

    public List<String> question3() {
        List<String> listQuestion3 = new ArrayList<>();

        if (!basicQuestions.getQuestion_1_3_11().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_11());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_12().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_12());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_13().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_13());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_14().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_14());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_15().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_15());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_16().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_16());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_17().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_17());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_18().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_18());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_19().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_19());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (!basicQuestions.getQuestion_1_3_20().equals("")) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_20());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        return listQuestion3;
    }


    public List<String> question4() {
        List<String> listQuestion4 = new ArrayList<>();

        if (!basicQuestions.getQuestion_2_21().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_22().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_23().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_24().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_25().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_26().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_27().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_28().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_29().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_30().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_31().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_32().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_33().equals("true")) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (!basicQuestions.getQuestion_2_34().equals("")) {
            listQuestion4.add("checked");
            listQuestion4.add(basicQuestions.getQuestion_2_34());
        } else {
            listQuestion4.add("");
            listQuestion4.add("");
        }

        return listQuestion4;
    }

    public List<String> question5() {
        List<String> listQuestion5 = new ArrayList<>();

        if (!basicQuestions.getQuestion_2_35().equals("true")) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (!basicQuestions.getQuestion_2_36().equals("true")) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (!basicQuestions.getQuestion_2_37().equals("true")) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (!basicQuestions.getQuestion_2_38().equals("true")) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (!basicQuestions.getQuestion_2_39().equals("true")) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }

        if (!basicQuestions.getQuestion_2_40().equals("")) {
            listQuestion5.add("checked");
            listQuestion5.add(basicQuestions.getQuestion_2_40());
        } else {
            listQuestion5.add("");
            listQuestion5.add("");
        }

        return listQuestion5;
    }

    public List<String> question6() {
        List<String> listQuestion6 = new ArrayList<>();

        if (!basicQuestions.getQuestion_3_41().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (!basicQuestions.getQuestion_3_42().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (!basicQuestions.getQuestion_3_43().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (!basicQuestions.getQuestion_3_44().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (!basicQuestions.getQuestion_3_45().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }

        if (!basicQuestions.getQuestion_3_46().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (!basicQuestions.getQuestion_3_47().equals("true")) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }

        if (!basicQuestions.getQuestion_3_48().equals("")) {
            listQuestion6.add("checked");
            listQuestion6.add(basicQuestions.getQuestion_3_48());
        } else {
            listQuestion6.add("");
            listQuestion6.add("");
        }

        return listQuestion6;
    }

    public List<String> question7() {
        List<String> listQuestion7 = new ArrayList<>();

        if (!basicQuestions.getQuestion_3_49().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (!basicQuestions.getQuestion_3_50().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (!basicQuestions.getQuestion_3_51().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (!basicQuestions.getQuestion_3_52().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (!basicQuestions.getQuestion_3_53().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }

        if (!basicQuestions.getQuestion_3_54().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (!basicQuestions.getQuestion_3_55().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }

        if (!basicQuestions.getQuestion_3_56().equals("true")) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }

        if (!basicQuestions.getQuestion_3_57().equals("")) {
            listQuestion7.add("checked");
            listQuestion7.add(basicQuestions.getQuestion_3_57());
        } else {
            listQuestion7.add("");
            listQuestion7.add("");
        }

        return listQuestion7;
    }
}
