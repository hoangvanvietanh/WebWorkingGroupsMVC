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
	
	public List<Task> findAll(){
		Session session = sessionFactory.openSession();
		TypedQuery<Task> query = session.createQuery("FROM task", Task.class);
		List<Task> contact = query.getResultList();
		return contact;
	}
	
	public Task find(int id) {
		return sessionFactory.openSession().find(Task.class, id);
	}
	
	public Task create(Task task) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.save(task);
		tran.commit();
		session.close();
		return task;
	}
	
	public Task delete(Task task) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.delete(task);
		tran.commit();
		session.close();
		return task;
	}
	
	public Task update(Task task) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.update(task);
		tran.commit();
		session.close();
		return task;
	}
}
