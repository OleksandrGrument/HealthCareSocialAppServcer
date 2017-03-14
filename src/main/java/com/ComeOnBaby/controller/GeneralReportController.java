package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.model.Note;
import com.ComeOnBaby.service.AppUserService;
import com.ComeOnBaby.service.NoteService;
import com.ComeOnBaby.util.DataNoteByMonthWeek;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
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

        List<AppUser> allAppUserList = appUserService.getAllUsers();
        List<Note> allAppUserNotes = new ArrayList<>();

        for (AppUser appUser : allAppUserList) {
            List<Note> notices = noteService.findUserNotes(appUser);
            if(notices.size()>0) {
                Note tempNote = notices.get(0);
                allAppUserNotes.add(tempNote);
                for (Note note : notices) {
                    if (tempNote.getDate().getMonth() != note.getDate().getMonth()) {
                        allAppUserNotes.add(note);
                        tempNote = note;
                    }
                }
            }
        }
        List<AppUser> listUsersByNoteByMonth = new ArrayList<>();
        for (Note note : allAppUserNotes){
            listUsersByNoteByMonth.add(appUserService.findById(note.getUser_id()));
        }

        generalMonthlyReport.addObject("allAppUserNotes", allAppUserNotes);
        generalMonthlyReport.addObject("listUsersByNoteByMonth", listUsersByNoteByMonth);

        return generalMonthlyReport;
    }

    @RequestMapping(value = "/generalMonthlyReportShow/{userId}/{month}/{year}", method = RequestMethod.GET)
    public ModelAndView generalMonthlyReportShow(@PathVariable Long userId, @PathVariable int month, @PathVariable int year) {
        ModelAndView generalMonthlyReportShow = new ModelAndView("generalMonthlyReportShow");

        AppUser user = appUserService.findById(userId);
        List<Note> notices = noteService.findUserNotes(user);
        //Collections.sort(notices, new NoteByDateComparator());

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

        return generalWeeklyReport;
    }
}
