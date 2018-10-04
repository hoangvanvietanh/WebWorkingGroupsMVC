package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.Project;

@Repository
public class ProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Project> findAll(){
		Session session = getSession();
		TypedQuery<Project> query = session.createQuery("FROM project", Project.class);
		List<Project> contact = query.getResultList();
		return contact;
	}
	
	public Project find(int id) {
		return getSession().find(Project.class, id);
	}
	
	public Project findByEmail(String email) {
		Session session = getSession();
		String sql="from Account a where a.email=:email ";
		Query<Project> query=session.createQuery(sql);
		query.setParameter("email", email);
		session.getTransaction().commit();
		Project result= query.getSingleResult();
		return result;
	}
	
	public Project create(Project project) {
		Session session = getSession();
		session.save(project);
		return project;
	}
	
	public Project delete(Project project) {
		Session session = getSession();
		session.delete(project);
		return project;
	}
	
	public Project update(Project project) {
		Session session = getSession();
		session.update(project);
		return project;
	}
}
