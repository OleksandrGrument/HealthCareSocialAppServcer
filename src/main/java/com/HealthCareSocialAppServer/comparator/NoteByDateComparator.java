package com.HealthCareSocialAppServer.comparator;

import com.HealthCareSocialAppServer.model.Note;
import java.util.Comparator;

public class NoteByDateComparator implements Comparator<Note> {
    @Override
    public int compare(Note note1, Note note2) {
        return note1.getDate().compareTo(note2.getDate());
    }
}
