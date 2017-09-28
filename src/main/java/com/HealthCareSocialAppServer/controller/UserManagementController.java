package com.HealthCareSocialAppServer.controller;

import com.HealthCareSocialAppServer.comparator.NoteByDateComparator;
import com.HealthCareSocialAppServer.model.AppUser;
import com.HealthCareSocialAppServer.model.BasicQuestions;
import com.HealthCareSocialAppServer.model.Note;
import com.HealthCareSocialAppServer.service.AppUserService;
import com.HealthCareSocialAppServer.service.BasicQuestionsService;
import com.HealthCareSocialAppServer.service.NoteService;
import com.HealthCareSocialAppServer.util.BasicQuestionsForm;
import com.HealthCareSocialAppServer.util.DataNoteByMonthWeek;
import com.HealthCareSocialAppServer.excelView.MonthlyWeeklyReportShowXlsx;
import com.HealthCareSocialAppServer.excelView.AllAppUsersInfoXlsx;
import com.HealthCareSocialAppServer.util.WeekReportInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;


@Controller
@RequestMapping("/users")
@SessionAttributes("roles")
public class UserManagementController {


    @Autowired
    AppUserService appUserService;

    @Autowired
    NoteService noteService;

    @Autowired
    BasicQuestionsService basicQuestionsService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView indexCabinet() {

        ModelAndView cabinetUsersList = new ModelAndView("managerCabinet");

        List<AppUser> users = appUserService.getAllUsers();

        cabinetUsersList.addObject("users", users);

        return cabinetUsersList;
    }


    @RequestMapping(value = "/user-profile/{userId}", method = RequestMethod.GET)
    public ModelAndView userProfile(@PathVariable Long userId) {
        ModelAndView userProfile = new ModelAndView("userProfile");

        AppUser user = appUserService.findById(userId);

        userProfile.addObject("user", user);

        return userProfile;
    }

    @RequestMapping(value = "/basic-questions/{userId}", method = RequestMethod.GET)
    public ModelAndView baseQuestions(@PathVariable Long userId) {

        ModelAndView basicQuestionsView = new ModelAndView("basicQuestions");
        AppUser user = appUserService.findById(userId);

        BasicQuestions basicQuestions = basicQuestionsService.readBasicQuestionsByUser(user);
        BasicQuestionsForm basicQuestionsForm = new BasicQuestionsForm(basicQuestions);

        List<String> listQuestion1 = basicQuestionsForm.question1();
        List<String> listQuestion2 = basicQuestionsForm.question2();
        List<String> listQuestion3 = basicQuestionsForm.question3();
        List<String> listQuestion4 = basicQuestionsForm.question4();
        List<String> listQuestion5 = basicQuestionsForm.question5();
        List<String> listQuestion6 = basicQuestionsForm.question6();
        List<String> listQuestion7 = basicQuestionsForm.question7();

        basicQuestionsView.addObject("user", user);
        basicQuestionsView.addObject("listQuestion1", listQuestion1);
        basicQuestionsView.addObject("listQuestion2", listQuestion2);
        basicQuestionsView.addObject("listQuestion3", listQuestion3);
        basicQuestionsView.addObject("listQuestion4", listQuestion4);
        basicQuestionsView.addObject("listQuestion5", listQuestion5);
        basicQuestionsView.addObject("listQuestion6", listQuestion6);
        basicQuestionsView.addObject("listQuestion7", listQuestion7);

        return basicQuestionsView;
    }

    @RequestMapping(value = "/basicQuestionsEdit/{userId}", method = RequestMethod.POST)
    public ModelAndView basicQuestionsEdit(@PathVariable Long userId,
                                           @RequestParam(value = "question1") String question1,
                                           @RequestParam(value = "question2") String question2,

                                           @RequestParam(value = "question3_1_1") String question3_1_1,
                                           @RequestParam(value = "question3_2_1") String question3_2_1,
                                           @RequestParam(value = "question3_3_1") String question3_3_1,
                                           @RequestParam(value = "question3_4_1") String question3_4_1,
                                           @RequestParam(value = "question3_5_1") String question3_5_1,
                                           @RequestParam(value = "question3_6_1") String question3_6_1,
                                           @RequestParam(value = "question3_7_1") String question3_7_1,
                                           @RequestParam(value = "question3_8_1") String question3_8_1,
                                           @RequestParam(value = "question3_9_1") String question3_9_1,
                                           @RequestParam(value = "question3_10_1") String question3_10_1,

                                           @RequestParam(value = "question4_1_1", required = false) boolean question4_1_1,
                                           @RequestParam(value = "question4_1_2", required = false) boolean question4_1_2,
                                           @RequestParam(value = "question4_1_3", required = false) boolean question4_1_3,
                                           @RequestParam(value = "question4_1_4", required = false) boolean question4_1_4,
                                           @RequestParam(value = "question4_1_5", required = false) boolean question4_1_5,
                                           @RequestParam(value = "question4_1_6", required = false) boolean question4_1_6,
                                           @RequestParam(value = "question4_1_7", required = false) boolean question4_1_7,
                                           @RequestParam(value = "question4_1_8", required = false) boolean question4_1_8,
                                           @RequestParam(value = "question4_1_9", required = false) boolean question4_1_9,
                                           @RequestParam(value = "question4_1_10", required = false) boolean question4_1_10,
                                           @RequestParam(value = "question4_1_11", required = false) boolean question4_1_11,
                                           @RequestParam(value = "question4_1_12", required = false) boolean question4_1_12,
                                           @RequestParam(value = "question4_1_13", required = false) boolean question4_1_13,
                                           @RequestParam(value = "question4_1_14_1") String question4_1_14_1,

                                           @RequestParam(value = "question4_2_1", required = false) boolean question4_2_1,
                                           @RequestParam(value = "question4_2_2", required = false) boolean question4_2_2,
                                           @RequestParam(value = "question4_2_3", required = false) boolean question4_2_3,
                                           @RequestParam(value = "question4_2_4", required = false) boolean question4_2_4,
                                           @RequestParam(value = "question4_2_5", required = false) boolean question4_2_5,
                                           @RequestParam(value = "question4_2_6_1") String question4_2_6_1,

                                           @RequestParam(value = "question5_1", required = false) boolean question5_1,
                                           @RequestParam(value = "question5_2", required = false) boolean question5_2,
                                           @RequestParam(value = "question5_3", required = false) boolean question5_3,
                                           @RequestParam(value = "question5_4", required = false) boolean question5_4,
                                           @RequestParam(value = "question5_5", required = false) boolean question5_5,
                                           @RequestParam(value = "question5_6", required = false) boolean question5_6,
                                           @RequestParam(value = "question5_7", required = false) boolean question5_7,
                                           @RequestParam(value = "question5_8_1") String question5_8_1,

                                           @RequestParam(value = "question6_1", required = false) boolean question6_1,
                                           @RequestParam(value = "question6_2", required = false) boolean question6_2,
                                           @RequestParam(value = "question6_3", required = false) boolean question6_3,
                                           @RequestParam(value = "question6_4", required = false) boolean question6_4,
                                           @RequestParam(value = "question6_5", required = false) boolean question6_5,
                                           @RequestParam(value = "question6_6", required = false) boolean question6_6,
                                           @RequestParam(value = "question6_7", required = false) boolean question6_7,
                                           @RequestParam(value = "question6_8", required = false) boolean question6_8,
                                           @RequestParam(value = "question6_9", required = false) boolean question6_9,
                                           @RequestParam(value = "question6_10_1") String question6_10_1) {
        ModelAndView basicQuestionsEdit = new ModelAndView("redirect:/users/basic-questions/" + userId);
        AppUser user = appUserService.findById(userId);
        System.out.println("==========START basicQuestionsEdit");

        BasicQuestions basicQuestions = basicQuestionsService.readBasicQuestionsByUser(user);

        //How many years have you not been able to be pregnant?
        switch (question1) {
            case "1":
                basicQuestions.setQuestion_1_1("0");
                break;
            case "2":
                basicQuestions.setQuestion_1_1("1-2");
                break;
            case "3":
                basicQuestions.setQuestion_1_1("2-3");
                break;
            case "4":
                basicQuestions.setQuestion_1_1("3-5");
                break;
            case "5":
                basicQuestions.setQuestion_1_1("5+");
                break;
        }

        //Do you currently have children?
        switch (question2) {
            case "1":
                basicQuestions.setQuestion_1_2("0");
                break;
            case "2":
                basicQuestions.setQuestion_1_2("1");
                break;
            case "3":
                basicQuestions.setQuestion_1_2("2");
                break;
            case "4":
                basicQuestions.setQuestion_1_2("3");
                break;
            case "5":
                basicQuestions.setQuestion_1_2("4+");
                break;
        }

        //What treatment did you experience?
        basicQuestions.setQuestion_1_3_11(question3_1_1);
        basicQuestions.setQuestion_1_3_12(question3_2_1);
        basicQuestions.setQuestion_1_3_13(question3_3_1);
        basicQuestions.setQuestion_1_3_14(question3_4_1);
        basicQuestions.setQuestion_1_3_15(question3_5_1);
        basicQuestions.setQuestion_1_3_16(question3_6_1);
        basicQuestions.setQuestion_1_3_17(question3_7_1);
        basicQuestions.setQuestion_1_3_18(question3_8_1);
        basicQuestions.setQuestion_1_3_19(question3_9_1);
        basicQuestions.setQuestion_1_3_20(question3_10_1);

        //Female
        basicQuestions.setQuestion_2_21(question4_1_1 + "");
        basicQuestions.setQuestion_2_22(question4_1_2 + "");
        basicQuestions.setQuestion_2_23(question4_1_3 + "");
        basicQuestions.setQuestion_2_24(question4_1_4 + "");
        basicQuestions.setQuestion_2_25(question4_1_5 + "");
        basicQuestions.setQuestion_2_26(question4_1_6 + "");
        basicQuestions.setQuestion_2_27(question4_1_7 + "");
        basicQuestions.setQuestion_2_28(question4_1_8 + "");
        basicQuestions.setQuestion_2_29(question4_1_9 + "");
        basicQuestions.setQuestion_2_30(question4_1_10 + "");
        basicQuestions.setQuestion_2_31(question4_1_11 + "");
        basicQuestions.setQuestion_2_32(question4_1_12 + "");
        basicQuestions.setQuestion_2_33(question4_1_13 + "");
        basicQuestions.setQuestion_2_34(question4_1_14_1);

        //Male
        basicQuestions.setQuestion_2_35(question4_2_1 + "");
        basicQuestions.setQuestion_2_36(question4_2_2 + "");
        basicQuestions.setQuestion_2_37(question4_2_3 + "");
        basicQuestions.setQuestion_2_38(question4_2_4 + "");
        basicQuestions.setQuestion_2_39(question4_2_5 + "");
        basicQuestions.setQuestion_2_40(question4_2_6_1);

        //What help do you need? Are you struggling with something?
        basicQuestions.setQuestion_3_41(question5_1 + "");
        basicQuestions.setQuestion_3_42(question5_2 + "");
        basicQuestions.setQuestion_3_43(question5_3 + "");
        basicQuestions.setQuestion_3_44(question5_4 + "");
        basicQuestions.setQuestion_3_45(question5_5 + "");
        basicQuestions.setQuestion_3_46(question5_6 + "");
        basicQuestions.setQuestion_3_47(question5_7 + "");
        basicQuestions.setQuestion_3_48(question5_8_1);

        //What are your plans for your family structure?
        basicQuestions.setQuestion_3_49(question6_1 + "");
        basicQuestions.setQuestion_3_50(question6_2 + "");
        basicQuestions.setQuestion_3_51(question6_3 + "");
        basicQuestions.setQuestion_3_52(question6_4 + "");
        basicQuestions.setQuestion_3_53(question6_5 + "");
        basicQuestions.setQuestion_3_54(question6_6 + "");
        basicQuestions.setQuestion_3_55(question6_7 + "");
        basicQuestions.setQuestion_3_56(question6_8 + "");
        basicQuestions.setQuestion_3_56(question6_9 + "");
        basicQuestions.setQuestion_3_57(question6_10_1);

        basicQuestionsService.updateBasicQuestions(basicQuestions);

        System.out.println("==========END basicQuestionsEdit");
        return basicQuestionsEdit;
    }

    @RequestMapping(value = "/monthly-report/{userId}", method = RequestMethod.GET)
    public ModelAndView monthlyReport(@PathVariable Long userId) {

        ModelAndView monthlyReport = new ModelAndView("monthlyReport");
        List<String> generalStatus = new ArrayList<>();

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);

        Collections.sort(notices, new NoteByDateComparator());
        if(notices.size()>0) {
            Note tempNote = notices.get(0);
            generalStatus.add(new DataNoteByMonthWeek(notices, tempNote.getDate().getMonth(), tempNote.getDate().getYear()).generalStatus());
            for (Note note : notices) {
                if (tempNote.getDate().getMonth() != note.getDate().getMonth()) {
                    generalStatus.add(new DataNoteByMonthWeek(notices, note.getDate().getMonth(), note.getDate().getYear()).generalStatus());
                    tempNote = note;
                }
            }
        }


        monthlyReport.addObject("user", user);
        monthlyReport.addObject("notices", notices);
        monthlyReport.addObject("generalStatus", generalStatus);

        return monthlyReport;
    }

    @RequestMapping(value = "/weekly-report/{userId}", method = RequestMethod.GET)
    public ModelAndView weeklyReport(@PathVariable Long userId) {

        ModelAndView weeklyReport = new ModelAndView("weeklyReport");
        AppUser user = appUserService.findById(userId);
        List<Note> notes = noteService.findUserNotes(user);
        Collections.sort(notes, new NoteByDateComparator());

        DataNoteByMonthWeek dataNoteByWeek = new DataNoteByMonthWeek(notes);
        List<String> generalStatus = new ArrayList<>();

        if(notes.size()>0) {
            Note tempNote = notes.get(0);
            generalStatus.add(new DataNoteByMonthWeek(notes, new DataNoteByMonthWeek().convertDateToCalendar(tempNote.getDate()).get(Calendar.WEEK_OF_YEAR)).generalStatus());
            for (Note note : notes) {
                if (new DataNoteByMonthWeek().convertDateToCalendar(tempNote.getDate()).get(Calendar.WEEK_OF_YEAR) != new DataNoteByMonthWeek().convertDateToCalendar(note.getDate()).get(Calendar.WEEK_OF_YEAR)) {
                    generalStatus.add(new DataNoteByMonthWeek(notes, new DataNoteByMonthWeek().convertDateToCalendar(note.getDate()).get(Calendar.WEEK_OF_YEAR)).generalStatus());
                    tempNote = note;
                }
            }
        }

        weeklyReport.addObject("user", user);
        weeklyReport.addObject("weekReportInformation", dataNoteByWeek.weekReportInformation());
        weeklyReport.addObject("generalStatus", generalStatus);

        return weeklyReport;
    }


    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public ModelAndView download() {

        AllAppUsersInfoXlsx xlsxView = new AllAppUsersInfoXlsx();
        xlsxView.setAppUserList(appUserService.getAllUsers());
        return new ModelAndView(xlsxView);
    }

    @RequestMapping(value = "/monthlyReportShow/{userId}/{month}/{year}", method = RequestMethod.GET)
    public ModelAndView monthlyReportShow(@PathVariable Long userId, @PathVariable int month, @PathVariable int year) {

        ModelAndView monthlyReport = new ModelAndView("monthlyReportShow");

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);


        DataNoteByMonthWeek dataNoteByMonth = new DataNoteByMonthWeek(notices, month, year);

        String daysInMonthsString = dataNoteByMonth.daysInMonthsString();
        String valueInMonthsString = dataNoteByMonth.valueInMonthsString();

        monthlyReport.addObject("user", user);
        monthlyReport.addObject("dataNoteByMonth", dataNoteByMonth);
        monthlyReport.addObject("month", month);
        monthlyReport.addObject("year", year);
        monthlyReport.addObject("daysInMonthsString", daysInMonthsString);
        monthlyReport.addObject("valueInMonthsString", valueInMonthsString);

        return monthlyReport;
    }

    @RequestMapping(value = "/downloadMonthlyReport/{userId}/{month}/{year}", method = RequestMethod.GET)
    public ModelAndView downloadMonthlyReport(@PathVariable Long userId, @PathVariable int month, @PathVariable int year) {

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);
        DataNoteByMonthWeek dataNoteByMonth = new DataNoteByMonthWeek(notices, month, year);

        MonthlyWeeklyReportShowXlsx monthlyReportShowXlsx = new MonthlyWeeklyReportShowXlsx();
        monthlyReportShowXlsx.setDataNoteByMonthWeek(dataNoteByMonth);
        return new ModelAndView(monthlyReportShowXlsx);
    }

    @RequestMapping(value = "/weeklyReportShow/{userId}/{countWeekOfYear}", method = RequestMethod.GET)
    public ModelAndView weeklyReportShow(@PathVariable Long userId, @PathVariable int countWeekOfYear) {
        ModelAndView weeklyReportShow = new ModelAndView("weeklyReportShow");


        System.out.println("countWeekOfYear in controller " + countWeekOfYear);
        AppUser user = appUserService.findById(userId);
        List<Note> notes = noteService.findUserNotes(user);

        DataNoteByMonthWeek dataNoteByWeek = new DataNoteByMonthWeek(notes, countWeekOfYear);
        WeekReportInformation weekReportInformation = new WeekReportInformation(dataNoteByWeek.getDataNoteByMonthWeek().get(0));


        weeklyReportShow.addObject("user", user);
        weeklyReportShow.addObject("weekReportInformation", weekReportInformation);
        weeklyReportShow.addObject("dataNoteByWeek", dataNoteByWeek);

        weeklyReportShow.addObject("daysInWeekString", dataNoteByWeek.daysInWeekString());
        weeklyReportShow.addObject("valueInWeekString", dataNoteByWeek.valueInWeekString());

        return weeklyReportShow;
    }

    @RequestMapping(value = "/downloadWeeklyReport/{userId}/{countWeekOfYear}", method = RequestMethod.GET)
    public ModelAndView downloadWeeklyReport(@PathVariable Long userId, @PathVariable int countWeekOfYear) {

        AppUser user = appUserService.findById(userId);
        List<Note> notes = noteService.findUserNotes(user);
        Collections.sort(notes, new NoteByDateComparator());

        DataNoteByMonthWeek dataNoteByWeek = new DataNoteByMonthWeek(notes, countWeekOfYear);

        MonthlyWeeklyReportShowXlsx weekyReportShowXlsx = new MonthlyWeeklyReportShowXlsx();
        weekyReportShowXlsx.setDataNoteByMonthWeek(dataNoteByWeek);
        return new ModelAndView(weekyReportShowXlsx);
    }
}
