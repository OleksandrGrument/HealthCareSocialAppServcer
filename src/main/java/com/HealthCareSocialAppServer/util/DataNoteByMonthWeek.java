package com.HealthCareSocialAppServer.util;

import com.HealthCareSocialAppServer.comparator.NoteByDateComparator;
import com.HealthCareSocialAppServer.model.Note;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class DataNoteByMonthWeek {

    private List<Note> dataNoteByMonthWeek;

    public DataNoteByMonthWeek(){}

    public DataNoteByMonthWeek(List<Note> dataNoteByMonthWeek) {
        this.dataNoteByMonthWeek = dataNoteByMonthWeek;
    }

    public DataNoteByMonthWeek(List<Note> notes, int month, int year) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM.yyyy");
        String strDate = month+"."+year;
        Date date = null;
        try {
            date = dateFormat.parse(strDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        List<Note> dataNoteByMonth = new ArrayList<Note>();
        if(notes.get(0) != null){
            for (Note note : notes) {
                if (dateFormat.format(note.getDate()).equals(dateFormat.format(date))) {
                    dataNoteByMonth.add(note);
                }
            }
        }else {
            System.out.println("-------DataNoteByMonthWeek NULL");
        }

        this.dataNoteByMonthWeek = dataNoteByMonth;
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
        Collections.sort(notesByWeek, new NoteByDateComparator());
        this.dataNoteByMonthWeek = notesByWeek;
    }

    public List<Note> getDataNoteByMonthWeek() {
        return dataNoteByMonthWeek;
    }

    public List<WeekReportInformation> weekReportInformation(){
        ArrayList<Integer> weekValue = new ArrayList<>();
        List<WeekReportInformation> weekReportInformation = new ArrayList<>();
        for (Note note : this.dataNoteByMonthWeek) {
            Calendar cal = convertDateToCalendar(note.getDate());
            int value = cal.get(Calendar.WEEK_OF_YEAR);
            if (weekValue.indexOf(value) < 0) {
                weekValue.add(value);
                weekReportInformation.add(new WeekReportInformation(note));
            }
        }
        return weekReportInformation;
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

    public int typeOfTea() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if (note.getRecommended_tea() != null) {
                String[] strings = note.getRecommended_tea().split(",");
                count+=strings.length;
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
            if(note.getGoing_to_bed_from()!=null){
                count++;
            }
        }
        return count;
    }

    public int averageSleepTime() {
        int count = 0;
        for (Note note : dataNoteByMonthWeek) {
            if(note.getGoing_to_bed_to()!=null){
            count++;
            }
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

        str = "매우 좋음 " + countEmotionVeryGood + "회, 좋음 " + countEmotionGood + "회, 보통 " + countEmotionUsually + "회, 우울 " + countEmotionPoor + "회";
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
            str = (value / count) + " (체중 감량)";
        } else if ((value / count >= 18.5) & (value / count < 23)) {
            str = (value / count) + " (정상)";
        } else if ((value / count >= 23) & (value / count < 25)) {
            str = (value / count) + " (초과 중량)";
        } else if ((value / count >= 25) & (value / count < 30)) {
            str = (value / count) + " (비만)";
        } else {
            str = (value / count) + " (고도 비만)";
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

    public String daysInWeekString() {
        String strDate = "";

        SimpleDateFormat dateFormatter = new SimpleDateFormat("EEEE", Locale.KOREA);
        SimpleDateFormat dateFormatter1 = new SimpleDateFormat("EEEE dd.MM.yyyy");
        for (Note note : dataNoteByMonthWeek) {
            if(note.getBbt()!= null){
                strDate+= "'"+dateFormatter.format(note.getDate())+"',";
            }
        }
        return strDate;
    }

    public String valueInWeekString() {
        String strBtp = "";
        for (Note note : dataNoteByMonthWeek) {
            if(note.getBbt()!= null){
                strBtp += note.getBbt() + ",";
            }
        }
        return strBtp;
    }

    public Calendar convertDateToCalendar(Date date) {
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

    public String generalStatus(){
        String generalStatus = "";
        int count = 0;
        List<String> stringList = new ArrayList<>();

        stringList.add(evolitionState(recommendedFood()));
        stringList.add(evolitionState(nuts()));
        stringList.add(evolitionState(typeOfTea()));
        stringList.add(evolitionState(exercise()));
        stringList.add(evolitionState(sleepBeforeMidnight()));
        stringList.add(evolitionState(averageSleepTime()));
        stringList.add(evolitionStateWater(waterIngestion()));
        stringList.add(evolitionState(vitamin()));
        stringList.add(evolitionState(folicAcid()));
        stringList.add(evolitionState(coffee()));
        stringList.add(evolitionState(alcohol()));
        stringList.add(evolitionState(smoking()));

        for(String string : stringList){
            if (string.equals("<span class=\"bad\">bad</span>")){
                count+=1;
            } else if (string.equals("<span class=\"good\">Good</span>")){
                count+=2;
            }else if (string.equals("<span class=\"excellent\">excellent</span>")) {
                count += 3;
            }
        }

        if((count >0) && (count <= 12)){
            generalStatus = "<span class=\"bad\">bad</span>";
        } else if ((count >12) && (count <= 24)){
            generalStatus = "<span class=\"good\">Good</span>";
        } else {
            generalStatus = "<span class=\"excellent\">excellent</span>";
        }

        return generalStatus;
    }


}
