package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.NoteDAO;
import com.java.vakapu.entity.Notes;

@Service
@Transactional
public class NoteService {

	@Autowired
	private NoteDAO noteDao;
	
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
