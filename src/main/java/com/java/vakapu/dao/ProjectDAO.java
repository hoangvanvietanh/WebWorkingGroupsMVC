package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Project;

@Repository
public class ProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Project> findAll(){
		TypedQuery<Project> query = getSession().createQuery("FROM project", Project.class);
		List<Project> contact = query.getResultList();
		return contact;
	}
	
	public Project find(int id) {
		return getSession().find(Project.class, id);
	}
	
	public Project findByEmail(String email) {
		@SuppressWarnings("unchecked")
		TypedQuery<Project> query=getSession().createQuery("from Account a where a.email=:email");
		query.setParameter("email", email);
		Project result= query.getSingleResult();
		return result;
	}
	
	public Project create(Project project) {
		getSession().save(project);
		return project;
	}
	
	public Project delete(Project project) {
		getSession().delete(project);
		return project;
	}
	
	public Project update(Project project) {
		getSession().update(project);
		return project;
	}
}
