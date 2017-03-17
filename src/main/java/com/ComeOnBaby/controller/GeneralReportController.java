package com.ComeOnBaby.controller;

import com.ComeOnBaby.comparator.NoteByDateComparator;
import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.model.Note;
import com.ComeOnBaby.service.AppUserService;
import com.ComeOnBaby.service.NoteService;
import com.ComeOnBaby.util.DataNoteByMonthWeek;
import com.ComeOnBaby.util.WeekReportInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/report")
@SessionAttributes("roles")
public class GeneralReportController {

    @Autowired
    AppUserService appUserService;

    @Autowired
    NoteService noteService;

    @RequestMapping(value = "/generalMonthlyReport", method = RequestMethod.GET)
    public ModelAndView generalMonthlyReport() {
        ModelAndView generalMonthlyReport = new ModelAndView("generalMonthlyReport");

        List<Note> allAppUsersNotes = noteService.getAllNotes();
        List<AppUser> appUsers = new ArrayList<>();
        for (Note note: allAppUsersNotes){
            if(appUsers.indexOf(note.getAppUser())<0){
                appUsers.add(note.getAppUser());
            }
        }

        List<Note> allAppUserNotesByMonth = new ArrayList<>();

        for (AppUser appUser : appUsers){
            List<Note> userNotes = new ArrayList<>();
            for (Note note : allAppUsersNotes){
                if(note.getAppUser().getId() == appUser.getId()){
                    userNotes.add(note);
                }
            }
            Collections.sort(userNotes, new NoteByDateComparator());
            if(userNotes.size()>0) {
                Note tempNote = userNotes.get(0);
                allAppUserNotesByMonth.add(tempNote);
                for (Note note : userNotes) {
                    if (tempNote.getDate().getMonth() != note.getDate().getMonth()) {
                        allAppUserNotesByMonth.add(note);
                        tempNote = note;
                    }
                }
            }
        }

        generalMonthlyReport.addObject("allAppUserNotesByMonth", allAppUserNotesByMonth);

        return generalMonthlyReport;
    }

    @RequestMapping(value = "/generalMonthlyReportShow/{userId}/{month}/{year}", method = RequestMethod.GET)
    public ModelAndView generalMonthlyReportShow(@PathVariable Long userId, @PathVariable int month, @PathVariable int year) {
        ModelAndView generalMonthlyReportShow = new ModelAndView("generalMonthlyReportShow");

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);

        DataNoteByMonthWeek dataNoteByMonth = new DataNoteByMonthWeek(notices, month, year);

        String daysInMonthsString = dataNoteByMonth.daysInMonthsString();
        String valueInMonthsString = dataNoteByMonth.valueInMonthsString();

        generalMonthlyReportShow.addObject("user", user);
        generalMonthlyReportShow.addObject("dataNoteByMonth", dataNoteByMonth);
        generalMonthlyReportShow.addObject("month", month);
        generalMonthlyReportShow.addObject("year", year);
        generalMonthlyReportShow.addObject("daysInMonthsString", daysInMonthsString);
        generalMonthlyReportShow.addObject("valueInMonthsString", valueInMonthsString);

        return generalMonthlyReportShow;
    }

    @RequestMapping(value = "/generalWeeklyReport", method = RequestMethod.GET)
    public ModelAndView generalWeeklyReport() {

        ModelAndView generalWeeklyReport = new ModelAndView("generalWeeklyReport");

        List<Note> allAppUsersNotes = noteService.getAllNotes();
        List<AppUser> appUsers = new ArrayList<>();
        for (Note note: allAppUsersNotes){
            if(appUsers.indexOf(note.getAppUser())<0){
                appUsers.add(note.getAppUser());
            }
        }

        List<WeekReportInformation> weekReportInformationAllUsers = new ArrayList<>();

        for (AppUser appUser : appUsers){
            List<Note> userNotes = new ArrayList<>();
            for (Note note : allAppUsersNotes){
                if(note.getAppUser().getId() == appUser.getId()){
                    userNotes.add(note);
                }
            }
            Collections.sort(userNotes, new NoteByDateComparator());

            DataNoteByMonthWeek dataNoteByMonthWeek = new DataNoteByMonthWeek(userNotes);
            weekReportInformationAllUsers.addAll(dataNoteByMonthWeek.weekReportInformation());

        }
        generalWeeklyReport.addObject("weekReportInformationAllUsers", weekReportInformationAllUsers);

        return generalWeeklyReport;
    }

    @RequestMapping(value = "/generalWeeklyReportShow/{userId}/{countWeekOfYear}", method = RequestMethod.GET)
    public ModelAndView weeklyReportShow(@PathVariable Long userId, @PathVariable int countWeekOfYear) {
        ModelAndView weeklyReportShow = new ModelAndView("generalWeeklyReportShow");


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

}
