package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.ProjectUser;


@Repository
public class ProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Project> findAll(){
		TypedQuery<Project> query = getSession().createQuery("FROM Project", Project.class);
		List<Project> contact = query.getResultList();
		return contact;
	}
	
	public List<Project> findByEmail(String email) {
		TypedQuery<Project> query = getSession().createQuery("select a from Project a where a.owner=:email",Project.class);
		query.setParameter("email", email);
		return query.getResultList();
	}
	
	
	public Project find(int id) {
		return getSession().find(Project.class, id);
	}
	
	public Project create(Project Project) {
		getSession().save(Project);
		return Project;
	}
	
	public Project delete(Project Project) {
		getSession().delete(Project);
		return Project;
	}
	
	public Project update(Project Project) {
		getSession().update(Project);
		return Project;
	}
	
}
