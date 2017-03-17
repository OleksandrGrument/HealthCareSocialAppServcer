package com.ComeOnBaby.util;


import com.ComeOnBaby.model.BasicQuestions;

import java.util.ArrayList;
import java.util.List;

public class BasicQuestionsForm {

    private BasicQuestions basicQuestions;


    public BasicQuestionsForm(BasicQuestions basicQuestions) {
        if (basicQuestions != null) {
            this.basicQuestions = basicQuestions;
        } else {
            this.basicQuestions = nullBasicQuestions();
        }

    }

    private BasicQuestions nullBasicQuestions() {
        BasicQuestions basicQuestions = new BasicQuestions();
        basicQuestions.setQuestion_1_1("");
        basicQuestions.setQuestion_1_2("");

        basicQuestions.setQuestion_1_3_11("");
        basicQuestions.setQuestion_1_3_12("");
        basicQuestions.setQuestion_1_3_13("");
        basicQuestions.setQuestion_1_3_14("");
        basicQuestions.setQuestion_1_3_15("");
        basicQuestions.setQuestion_1_3_16("");
        basicQuestions.setQuestion_1_3_17("");
        basicQuestions.setQuestion_1_3_18("");
        basicQuestions.setQuestion_1_3_19("");
        basicQuestions.setQuestion_1_3_20("");

        basicQuestions.setQuestion_2_21("");
        basicQuestions.setQuestion_2_22("");
        basicQuestions.setQuestion_2_23("");
        basicQuestions.setQuestion_2_24("");
        basicQuestions.setQuestion_2_25("");
        basicQuestions.setQuestion_2_26("");
        basicQuestions.setQuestion_2_27("");
        basicQuestions.setQuestion_2_28("");
        basicQuestions.setQuestion_2_29("");
        basicQuestions.setQuestion_2_30("");
        basicQuestions.setQuestion_2_31("");
        basicQuestions.setQuestion_2_32("");
        basicQuestions.setQuestion_2_33("");
        basicQuestions.setQuestion_2_34("");
        basicQuestions.setQuestion_2_35("");
        basicQuestions.setQuestion_2_36("");
        basicQuestions.setQuestion_2_37("");
        basicQuestions.setQuestion_2_38("");
        basicQuestions.setQuestion_2_39("");
        basicQuestions.setQuestion_2_40("");

        basicQuestions.setQuestion_3_41("");
        basicQuestions.setQuestion_3_42("");
        basicQuestions.setQuestion_3_43("");
        basicQuestions.setQuestion_3_44("");
        basicQuestions.setQuestion_3_45("");
        basicQuestions.setQuestion_3_46("");
        basicQuestions.setQuestion_3_47("");
        basicQuestions.setQuestion_3_48("");
        basicQuestions.setQuestion_3_49("");
        basicQuestions.setQuestion_3_50("");
        basicQuestions.setQuestion_3_51("");
        basicQuestions.setQuestion_3_52("");
        basicQuestions.setQuestion_3_53("");
        basicQuestions.setQuestion_3_54("");
        basicQuestions.setQuestion_3_55("");
        basicQuestions.setQuestion_3_56("");
        basicQuestions.setQuestion_3_57("");


        return basicQuestions;
    }

    public List<String> question1() {
        List<String> listQuestion1 = new ArrayList<>();
        String value = basicQuestions.getQuestion_1_1();
        if (value != null) {
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
        } else {
            listQuestion1.add("checked");
            listQuestion1.add("");
            listQuestion1.add("");
            listQuestion1.add("");
            listQuestion1.add("");
        }

        return listQuestion1;
    }

    public List<String> question2() {
        List<String> listQuestion2 = new ArrayList<>();
        String value = basicQuestions.getQuestion_1_2();
        if (value != null) {
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
        } else {
            listQuestion2.add("checked");
            listQuestion2.add("");
            listQuestion2.add("");
            listQuestion2.add("");
            listQuestion2.add("");
        }
        return listQuestion2;
    }

    public List<String> question3() {
        List<String> listQuestion3 = new ArrayList<>();

        if (basicQuestions.getQuestion_1_3_11() != null & !("").equals(basicQuestions.getQuestion_1_3_11())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_11());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_12() != null & !("").equals(basicQuestions.getQuestion_1_3_12())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_12());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_13() != null & !("").equals(basicQuestions.getQuestion_1_3_13())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_13());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_14() != null & !("").equals(basicQuestions.getQuestion_1_3_14())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_14());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_15() != null & !("").equals(basicQuestions.getQuestion_1_3_15())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_15());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_16() != null & !("").equals(basicQuestions.getQuestion_1_3_16())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_16());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_17() != null & !("").equals(basicQuestions.getQuestion_1_3_17())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_17());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_18() != null & !("").equals(basicQuestions.getQuestion_1_3_18())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_18());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_19() != null & !("").equals(basicQuestions.getQuestion_1_3_19())) {
            listQuestion3.add("checked");
            listQuestion3.add(basicQuestions.getQuestion_1_3_19());
        } else {
            listQuestion3.add("");
            listQuestion3.add("");
        }

        if (basicQuestions.getQuestion_1_3_20() != null & !("").equals(basicQuestions.getQuestion_1_3_20())) {
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

        if (basicQuestions.getQuestion_2_21() != null & !("false").equals(basicQuestions.getQuestion_2_21())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_22() != null & !("false").equals(basicQuestions.getQuestion_2_22())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_23() != null & !("false").equals(basicQuestions.getQuestion_2_23())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_24() != null & !("false").equals(basicQuestions.getQuestion_2_24())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_25() != null & !("false").equals(basicQuestions.getQuestion_2_25())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_26() != null & !("false").equals(basicQuestions.getQuestion_2_26())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_27() != null & !("false").equals(basicQuestions.getQuestion_2_27())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_28() != null & !("false").equals(basicQuestions.getQuestion_2_28())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_29() != null & !("false").equals(basicQuestions.getQuestion_2_29())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_30() != null & !("false").equals(basicQuestions.getQuestion_2_30())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_31() != null & !("false").equals(basicQuestions.getQuestion_2_31())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_32() != null & !("false").equals(basicQuestions.getQuestion_2_32())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_33() != null & !("false").equals(basicQuestions.getQuestion_2_33())) {
            listQuestion4.add("checked");
        } else {
            listQuestion4.add("");
        }
        if (basicQuestions.getQuestion_2_34() != null & !("").equals(basicQuestions.getQuestion_2_34())) {
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

        if (basicQuestions.getQuestion_2_35() != null & !("false").equals(basicQuestions.getQuestion_2_35())) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (basicQuestions.getQuestion_2_36() != null & !("false").equals(basicQuestions.getQuestion_2_36())) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (basicQuestions.getQuestion_2_37() != null & !("false").equals(basicQuestions.getQuestion_2_37())) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (basicQuestions.getQuestion_2_38() != null & !("false").equals(basicQuestions.getQuestion_2_38())) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }
        if (basicQuestions.getQuestion_2_39() != null & !("false").equals(basicQuestions.getQuestion_2_39())) {
            listQuestion5.add("checked");
        } else {
            listQuestion5.add("");
        }

        if (basicQuestions.getQuestion_2_40() != null & !("").equals(basicQuestions.getQuestion_2_40())) {
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

        if (basicQuestions.getQuestion_3_41() != null & !("false").equals(basicQuestions.getQuestion_3_41())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (basicQuestions.getQuestion_3_42() != null & !("false").equals(basicQuestions.getQuestion_3_42())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (basicQuestions.getQuestion_3_43() != null & !("false").equals(basicQuestions.getQuestion_3_43())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (basicQuestions.getQuestion_3_44() != null & !("false").equals(basicQuestions.getQuestion_3_44())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (basicQuestions.getQuestion_3_45() != null & !("false").equals(basicQuestions.getQuestion_3_45())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }

        if (basicQuestions.getQuestion_3_46() != null & !("false").equals(basicQuestions.getQuestion_3_46())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }
        if (basicQuestions.getQuestion_3_47() != null & !("false").equals(basicQuestions.getQuestion_3_47())) {
            listQuestion6.add("checked");
        } else {
            listQuestion6.add("");
        }

        if (basicQuestions.getQuestion_3_48() != null & !("").equals(basicQuestions.getQuestion_3_48())) {
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

        if (basicQuestions.getQuestion_3_49() != null & !("").equals(basicQuestions.getQuestion_3_49())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (basicQuestions.getQuestion_3_50() != null & !("").equals(basicQuestions.getQuestion_3_50())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (basicQuestions.getQuestion_3_51() != null & !("").equals(basicQuestions.getQuestion_3_51())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (basicQuestions.getQuestion_3_52() != null & !("").equals(basicQuestions.getQuestion_3_52())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (basicQuestions.getQuestion_3_53() != null & !("").equals(basicQuestions.getQuestion_3_53())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }

        if (basicQuestions.getQuestion_3_54() != null & !("").equals(basicQuestions.getQuestion_3_54())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }
        if (basicQuestions.getQuestion_3_55() != null & !("").equals(basicQuestions.getQuestion_3_55())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }

        if (basicQuestions.getQuestion_3_56() != null & !("").equals(basicQuestions.getQuestion_3_56())) {
            listQuestion7.add("checked");
        } else {
            listQuestion7.add("");
        }

        if (basicQuestions.getQuestion_3_57() != null & !("").equals(basicQuestions.getQuestion_3_57())) {
            listQuestion7.add("checked");
            listQuestion7.add(basicQuestions.getQuestion_3_57());
        } else {
            listQuestion7.add("");
            listQuestion7.add("");
        }

        return listQuestion7;
    }
}
