package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Project;

@Repository
public class ProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	public List<Project> findAll(){
		Session session = sessionFactory.openSession();
		TypedQuery<Project> query = session.createQuery("FROM project", Project.class);
		List<Project> contact = query.getResultList();
		return contact;
	}
	
	public Project find(int id) {
		return sessionFactory.openSession().find(Project.class, id);
	}
	
	
	public Project create(Project project) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.save(project);
		tran.commit();
		session.close();
		return project;
	}
	
	public Project delete(Project project) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.delete(project);
		tran.commit();
		session.close();
		return project;
	}
	
	public Project update(Project project) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.update(project);
		tran.commit();
		session.close();
		return project;
	}
}
