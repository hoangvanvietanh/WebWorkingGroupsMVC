package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.ProjectUser;

@Repository
public class ProjectUserDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<ProjectUser> findAll(){
		TypedQuery<ProjectUser> query = getSession().createQuery("FROM ProjectUser", ProjectUser.class);
		List<ProjectUser> contact = query.getResultList();
		return contact;
	}
	
	public ProjectUser find(int id) {
		return getSession().find(ProjectUser.class, id);
	}
	
	public List<ProjectUser> findByEmail(String email) {
		TypedQuery<ProjectUser> query=getSession().createQuery("from ProjectUser a where a.user.email=:email",ProjectUser.class);
		query.setParameter("email", email);
		List<ProjectUser> result= query.getResultList();
		return result;
	}
	
	public List<ProjectUser> findByIdProject(int id) {
		TypedQuery<ProjectUser> query=getSession().createQuery("from ProjectUser a where a.project.id=:id",ProjectUser.class);
		query.setParameter("id", id);
		List<ProjectUser> result= query.getResultList();
		return result;
	}
	
	public ProjectUser create(ProjectUser project) {
		getSession().save(project);
		return project;
	}
	
	public ProjectUser delete(ProjectUser project) {
		getSession().delete(project);
		return project;
	}
	
	public ProjectUser update(ProjectUser project) {
		getSession().update(project);
		return project;
	}
}
