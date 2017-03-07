package com.ComeOnBaby.util;

import com.ComeOnBaby.comparator.NoteByDateComparator;
import com.ComeOnBaby.model.Note;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by mr_je on 06.03.2017.
 */
public class DataNoteByMonth {
    private List<Note> dataNoteByMonth;
    private int[] daysInMonths = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    private int mounthValue;

    public DataNoteByMonth(List<Note> notes, int month, int year) {
        this.mounthValue = month;
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM.yyyy");
        Date date = new Date(year, month, 0);

        List<Note> dataNoteByMonth = new ArrayList<Note>();
        for (Note note : notes) {
            if (!dateFormat.format(note.getDate()).equals(dateFormat.format(date))) {
                dataNoteByMonth.add(note);
            }
        }
        this.dataNoteByMonth = dataNoteByMonth;
    }

    public int recommendedFood() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getRecommended_food() != null) {
                count++;
            }
        }
        return count;
    }

    public int nuts() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getHas_nuts() != null) {
                count++;
            }
        }
        return count;
    }

    public int car() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getGoing_to_bed_from() != null) {
                count++;
            }
        }
        return count;
    }

    public int exercise() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getHas_exercise() != null) {
                count++;
            }
        }
        return count;
    }

    public int sleepBeforeMidnight() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            //if(note.get!=null){
            count++;
            //}
        }
        return count;
    }

    public int averageSleepTime() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            //if(note.get!=null){
            count++;
            //}
        }
        return count;
    }

    public double waterIngestion() {
        double count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getWater_intake() != null) {
                count += note.getWater_intake();
            }
        }
        return count;
    }

    public double slut() {
        double count = 0;
        for (Note note : dataNoteByMonth) {
            /*if(note.getE!=null){
                count+=note.getWater_intake();
            }*/
        }
        return count;
    }

    public int vitamin() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getVitamin() != null) {
                count++;
            }
        }
        return count;
    }

    public int folicAcid() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getFolic_acid() != null) {
                count++;
            }
        }
        return count;
    }

    public int coffee() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getCoffee_intake() != null) {
                count += note.getCoffee_intake();
            }
        }
        return count;
    }

    public int alcohol() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
            if (note.getAlcohol_intake() != null) {
                count += note.getAlcohol_intake();
            }
        }
        return count;
    }

    public int smoking() {
        int count = 0;
        for (Note note : dataNoteByMonth) {
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

        for (Note note : dataNoteByMonth) {
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
        for (Note note : dataNoteByMonth) {
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

    public String daysInMonthsString() {
        String strDate = "";
        Collections.sort(dataNoteByMonth, new NoteByDateComparator());
        for (int i = 0; i <dataNoteByMonth.size(); i++) {
            if(dataNoteByMonth.get(i).getBbt()!= null){
                strDate+=dataNoteByMonth.get(i).getDate().getDate()+",";
            }
        }
        System.out.println("date in month " + strDate);
        return strDate;
    }

    public String valueInMonthsString() {
        String strBtp = "";
            for (int i = 0; i < dataNoteByMonth.size(); i++) {
               if(dataNoteByMonth.get(i).getBbt()!= null){
                   strBtp += dataNoteByMonth.get(i).getBbt() + ",";
                }
            }
        System.out.println("value strBtp : "+strBtp);
        return strBtp;
    }

}
