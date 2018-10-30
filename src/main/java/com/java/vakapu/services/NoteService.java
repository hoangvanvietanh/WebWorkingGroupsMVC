package com.java.vakapu.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.NoteDAO;
import com.java.vakapu.entity.Notes;
import com.java.vakapu.model.NoteModel;

@Service
@Transactional
public class NoteService {

	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private NoteDAO noteDao;
	
	@Transactional
	public void updateNote(NoteModel model) {
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		Notes note = noteDao.findByID(model.getId());
		String current= accountServices.getEmailUser();
		
		note.setEmailUser(current);
		note.setNotes(model.getNotes());
		note.setDate(time);
		note.setTitleNotes(model.getTitleNotes());
	
		noteDao.updateNote(note);	
	}
	
	public List<Notes> findAllNote(int idtask)
	{
		return noteDao.findAllNotes(idtask);
	}
	
	public Notes findByID(int id)
	{
		return noteDao.findByID(id);
	}
	
	public Notes createNote(Notes note)
	{
		return noteDao.createNote(note);
	}
	
	public Notes updateNote(Notes note)
	{
		return noteDao.updateNote(note);
	}
	
	public void deleteNote(Notes note)
	{
		noteDao.deleteNote(note);
	}
}
