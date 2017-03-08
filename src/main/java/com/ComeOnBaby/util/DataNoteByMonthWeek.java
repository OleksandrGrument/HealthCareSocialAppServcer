package com.ComeOnBaby.util;

import com.ComeOnBaby.comparator.NoteByDateComparator;
import com.ComeOnBaby.model.Note;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class DataNoteByMonthWeek {
    private List<Note> dataNoteByMonthWeek;

    public DataNoteByMonthWeek(List<Note> dataNoteByMonthWeek) {
        this.dataNoteByMonthWeek = dataNoteByMonthWeek;
    }

    public DataNoteByMonthWeek(List<Note> notes, int month, int year) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM.yyyy");
        Date date = new Date(year, month, 0);

        List<Note> dataNoteByMonth = new ArrayList<Note>();
        for (Note note : notes) {
            if (!dateFormat.format(note.getDate()).equals(dateFormat.format(date))) {
                dataNoteByMonth.add(note);
            }
        }
        this.dataNoteByMonthWeek = dataNoteByMonth;
    }

    public List<WeekReportInformation> weekReportInformation(){
        ArrayList<Integer> weekValue = new ArrayList<>();
        List<WeekReportInformation> weekReportInformation = new ArrayList<>();
        for (Note note : this.dataNoteByMonthWeek) {
            Calendar cal = convertDateToCalendar(note.getDate());
            int value = cal.get(Calendar.WEEK_OF_YEAR);
            if (weekValue.indexOf(value) < 0) {
                weekValue.add(value);
                weekReportInformation.add(new WeekReportInformation(note.getDate()));
            }
        }
        return weekReportInformation;
    }



    public DataNoteByMonthWeek(List<Note> dataNoteByWeek, int countWeekOfYear){
        List<Note> notesByWeek = new ArrayList<>();
        for (Note note : dataNoteByWeek) {
            Calendar cal = convertDateToCalendar(note.getDate());
            int value = cal.get(Calendar.WEEK_OF_YEAR);
            if (value == countWeekOfYear) {
                notesByWeek.add(note);
            }
        }
        this.dataNoteByMonthWeek = notesByWeek;
    }

    public List<Note> getDataNoteByMonthWeek() {
        return dataNoteByMonthWeek;
    }

    public int recommendedFood() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getRecommended_food() != null) {
                count++;
            }
        }
        return count;
    }

    public int nuts() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getHas_nuts() != null) {
                count++;
            }
        }
        return count;
    }

    public int car() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getGoing_to_bed_from() != null) {
                count++;
            }
        }
        return count;
    }

    public int exercise() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getHas_exercise() != null) {
                count++;
            }
        }
        return count;
    }

    public int sleepBeforeMidnight() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            //if(note.get!=null){
            count++;
            //}
        }
        return count;
    }

    public int averageSleepTime() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            //if(note.get!=null){
            count++;
            //}
        }
        return count;
    }

    public double waterIngestion() {
        double count = 0;
        int countValue = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getWater_intake() != null) {
                count += note.getWater_intake();
                countValue++;
            }
        }
        return count/countValue;
    }

    public double slut() {
        double count = 0;
        for (Note note : dataNoteByMonthWeek) {
            /*if(note.getE!=null){
                count+=note.getWater_intake();
            }*/
        }
        return count;
    }

    public int vitamin() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getVitamin() != null) {
                count++;
            }
        }
        return count;
    }

    public int folicAcid() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getFolic_acid() != null) {
                count++;
            }
        }
        return count;
    }

    public int coffee() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getCoffee_intake() != null) {
                count += note.getCoffee_intake();
            }
        }
        return count;
    }

    public int alcohol() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getAlcohol_intake() != null) {
                count += note.getAlcohol_intake();
            }
        }
        return count;
    }

    public int smoking() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getSmoking() != null) {
                count++;
            }
        }
        return count;
    }

    public String emotion() {
        int countEmotionVeryGood = 0;
        int countEmotionGood = 0;
        int countEmotionUsually = 0;
        int countEmotionPoor = 0;
        String str = "";

        for (Note note : dataNoteByMonthWeek) {
            if (note.getEmotional_state() != null) {
                if (note.getEmotional_state() == 4) {
                    countEmotionVeryGood++;
                } else if (note.getEmotional_state() == 3) {
                    countEmotionGood++;
                } else if (note.getEmotional_state() == 2) {
                    countEmotionUsually++;
                } else if (note.getEmotional_state() == 1) {
                    countEmotionPoor++;
                }
            }
        }

        str = "very good " + countEmotionVeryGood + " times, good " + countEmotionGood + " times, usually " + countEmotionUsually + " times, poor " + countEmotionPoor;
        return str;
    }

    public String bodyMassIndex() {
        String str = "";
        float count = 0;
        float value = 0;
        for (Note note : dataNoteByMonthWeek) {
            count++;
            value += note.getBmi();
        }
        if ((value / count >= 0) & (value / count < 18.5)) {
            str = (value / count) + " (underweight)";
        } else if ((value / count >= 18.5) & (value / count < 23)) {
            str = (value / count) + " (normal)";
        } else if ((value / count >= 23) & (value / count < 25)) {
            str = (value / count) + " (overweight)";
        } else if ((value / count >= 25) & (value / count < 30)) {
            str = (value / count) + " (obesity)";
        } else {
            str = (value / count) + " (altitude obesity)";
        }
        return str;
    }

    public String evolitionState(float value) {
        String str = "";
        if ((value >= 0) & (value <= 10)) {
            str = "<span class=\"bad\">bad</span>";
        } else if ((value >= 11) & (value <= 20)) {
            str = "<span class=\"good\">good</span>";
        } else {
            str = "<span class=\"excellent\">excellent</span>";
        }
        return str;
    }

    public String evolitionStateWater(double value) {
        String str = "";
        if ((value >= 0) & (value <= 1)) {
            str = "<span class=\"bad\">bad</span>";
        } else if ((value >1) & (value <= 1.5)) {
            str = "<span class=\"good\">good</span>";
        } else {
            str = "<span class=\"excellent\">excellent</span>";
        }
        return str;
    }

    public String evolitionStateAlcohol(double value) {
        String str = "";
        if ((value >= 0) & (value <= 10)) {
            str = "<span class=\"excellent\">excellent</span>";
        } else if ((value >11) & (value <= 20)) {
            str = "<span class=\"good\">good</span>";
        } else {
            str = "<span class=\"bad\">bad</span>";
        }
        return str;
    }

    public String daysInMonthsString() {
        String strDate = "";
        Collections.sort(dataNoteByMonthWeek, new NoteByDateComparator());
        for (int i = 0; i < dataNoteByMonthWeek.size(); i++) {
            if(dataNoteByMonthWeek.get(i).getBbt()!= null){
                strDate+= dataNoteByMonthWeek.get(i).getDate().getDate()+",";
            }
        }
        System.out.println("date in month " + strDate);
        return strDate;
    }

    public String valueInMonthsString() {
        String strBtp = "";
            for (int i = 0; i < dataNoteByMonthWeek.size(); i++) {
               if(dataNoteByMonthWeek.get(i).getBbt()!= null){
                   strBtp += dataNoteByMonthWeek.get(i).getBbt() + ",";
                }
            }
        System.out.println("value strBtp : "+strBtp);
        return strBtp;
    }

    private Calendar convertDateToCalendar(Date date) {
        Calendar cal = null;
        DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        String stringDate = formatter.format(date);
        try {
            Date newDate = formatter.parse(stringDate);
            cal = Calendar.getInstance();
            cal.setTime(newDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return cal;
    }
}
