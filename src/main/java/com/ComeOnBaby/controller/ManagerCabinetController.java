package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.model.Note;
import com.ComeOnBaby.service.AppUserService;
import com.ComeOnBaby.service.NoteService;
import com.ComeOnBaby.util.DataNoteByMonth;
import com.ComeOnBaby.util.MonthlyReportShowXlsx;
import com.ComeOnBaby.util.XlsxView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("/cabinet")
@SessionAttributes("roles")
public class ManagerCabinetController {


    @Autowired
    AppUserService appUserService;

    @Autowired
    NoteService noteService;

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

        ModelAndView basicQuestions = new ModelAndView("basicQuestions");

        AppUser user = appUserService.findById(userId);

        basicQuestions.addObject("user", user);

        return basicQuestions;
    }

    @RequestMapping(value = "/monthly-report/{userId}", method = RequestMethod.GET)
    public ModelAndView monthlyReport(@PathVariable Long userId) {

        ModelAndView monthlyReport = new ModelAndView("monthlyReport");

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);

        monthlyReport.addObject("user", user);
        monthlyReport.addObject("notices", notices);

        return monthlyReport;
    }

    @RequestMapping(value = "/weekly-report/{userId}" , method = RequestMethod.GET)
    public ModelAndView weeklyReport(@PathVariable Long userId){

        ModelAndView weeklyReport = new ModelAndView("weeklyReport");

        AppUser user = appUserService.findById(userId);

        weeklyReport.addObject("user", user);

        return weeklyReport;
    }



    @RequestMapping(value = "/download" , method = RequestMethod.GET)
    public ModelAndView download (){

        XlsxView xlsxView = new XlsxView();
        xlsxView.setAppUserList(appUserService.getAllUsers());
        return new ModelAndView(xlsxView);
    }

    @RequestMapping(value = "/monthlyReportShow/{userId}/{month}/{year}", method = RequestMethod.GET)
    public ModelAndView monthlyReportShow(@PathVariable Long userId, @PathVariable int month, @PathVariable int year) {

        System.out.println("========month " + month);
        System.out.println("========year " + year);

        ModelAndView monthlyReport = new ModelAndView("monthlyReportShow");

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);
        DataNoteByMonth dataNoteByMonth = new DataNoteByMonth(notices, month, year);

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

    @RequestMapping(value = "/downloadMonthlyReport/{userId}/{month}/{year}" , method = RequestMethod.GET)
    public ModelAndView downloadMonthlyReport (@PathVariable Long userId, @PathVariable int month, @PathVariable int year){

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);
        DataNoteByMonth dataNoteByMonth = new DataNoteByMonth(notices, month, year);

        MonthlyReportShowXlsx monthlyReportShowXlsx = new MonthlyReportShowXlsx();
        monthlyReportShowXlsx.setDataNoteByMonth(dataNoteByMonth);
        return new ModelAndView(monthlyReportShowXlsx);
    }

}
