package com.HealthCareSocialAppServer.dao;

import com.HealthCareSocialAppServer.model.AppUser;
import com.HealthCareSocialAppServer.model.Note;

import java.util.Date;
import java.util.List;

public interface NoteDao {

    Long create(Note note);

    Note read(Long id);

    void update(Note note);

    void delete(Note note);

    Note findByUserDate(AppUser user, Date date);

    List<Note> findUserNotes(AppUser user);

    List<Note> findUserNotesInterval(AppUser user, Date startDate, Date endDate);

    List<Note> findAll();

    List<Note> findNotesWithUser();
}
