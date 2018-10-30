package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Notes;



@Repository
public class NoteDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Notes> findAllNotes(int idtask)
	{
		TypedQuery<Notes> query= getSession().createQuery("from Notes a where a.taskTeamProject.id=:taskTeamProject", Notes.class);
		query.setParameter("taskTeamProject", idtask);
		List<Notes> result=query.getResultList();
		return result;
	}
	
	
	public Notes findByID(int id)
	{
		TypedQuery<Notes> query=getSession().createQuery("select a from Notes a where a.id=:id", Notes.class);
		query.setParameter("id", id);
		Notes result=query.getSingleResult();
		return result;
	}
	
	public Notes createNote(Notes note)
	{
		getSession().save(note);
		return note;
	}
	
	public Notes updateNote(Notes note)
	{
		getSession().update(note);
		return note;
	}
	
	public void deleteNote(Notes note)
	{
		getSession().delete(note);
	}
}
