package com.HealthCareSocialAppServer.util;

import com.HealthCareSocialAppServer.model.Note;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class WeekReportInformation {
    private String startOfWeek;
    private String endOfWeek;
    private int countWeekOfYear;
    private Note note;

    public WeekReportInformation(Note note) {
        this.note = note;
        Calendar calendar = null;
        DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        String stringDate = formatter.format(this.note.getDate());
        try {
            Date newDate = formatter.parse(stringDate);
            calendar = Calendar.getInstance();
            calendar.setTime(newDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.startOfWeek = dateFirstDayOfWeek(calendar);
        this.endOfWeek = dateLastDayOfWeek(calendar);
        this.countWeekOfYear = calendar.get(Calendar.WEEK_OF_YEAR) - 1;
    }

    public String getStartOfWeek() {
        return startOfWeek;
    }

    public String getEndOfWeek() {
        return endOfWeek;
    }

    public int getCountWeekOfYear() {
        return countWeekOfYear;
    }

    public Note getNote() {
        return note;
    }

    private String dateFirstDayOfWeek(Calendar calendar) {
        SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");
        Integer dayDifference = calendar.get(Calendar.DAY_OF_WEEK) == 1 ? -6 : (Calendar.SUNDAY - calendar.get(Calendar.DAY_OF_WEEK));
        calendar.add(Calendar.DAY_OF_MONTH, dayDifference);
        String dateFirstDayOfWeek = formattedDate.format(calendar.getTime()); //Дата на начало текущей недели
        calendar.add(Calendar.DAY_OF_MONTH, -dayDifference);
        return dateFirstDayOfWeek;
    }

    private String dateLastDayOfWeek(Calendar calendar) {
        SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");
        Integer dayDifference = calendar.get(Calendar.DAY_OF_WEEK) == 1 ? -6 : (Calendar.SATURDAY - calendar.get(Calendar.DAY_OF_WEEK));
        calendar.add(Calendar.DAY_OF_MONTH, dayDifference);
        String dateLastDayOfWeek = formattedDate.format(calendar.getTime());
        calendar.add(Calendar.DAY_OF_MONTH, dayDifference);
        return dateLastDayOfWeek;
    }

}
