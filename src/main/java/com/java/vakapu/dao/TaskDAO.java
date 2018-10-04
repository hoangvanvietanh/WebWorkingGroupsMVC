package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Task;

@Repository
public class TaskDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Task> findAll(){
		Session session = getSession();
		TypedQuery<Task> query = session.createQuery("FROM Task", Task.class);
		List<Task> contact = query.getResultList();
		return contact;
	}
	
	public Task find(int id) {
		return getSession().find(Task.class, id);
	}
	
	public Task create(Task task) {
		Session session = getSession();
		session.save(task);
		return task;
	}
	
	public Task delete(Task task) {
		Session session = getSession();
		session.delete(task);
		return task;
	}
	
	public Task update(Task task) {
		Session session = getSession();
		session.update(task);
		return task;
	}
}
