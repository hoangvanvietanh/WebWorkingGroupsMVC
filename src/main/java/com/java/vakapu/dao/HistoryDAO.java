package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.ProjectHistory;
import com.java.vakapu.entity.Todo;

@Repository
public class HistoryDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<ProjectHistory> findByIdProject(int id) {
		TypedQuery<ProjectHistory> query = getSession().createQuery("select a from ProjectHistory a where a.teamProject.id=:id",ProjectHistory.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	
	public ProjectHistory find(int id) {
		return getSession().find(ProjectHistory.class, id);
	}
	
	public ProjectHistory create(ProjectHistory rojectHistory) {
		getSession().save(rojectHistory);
		return rojectHistory;
	}
	
	public ProjectHistory delete(ProjectHistory projectHistory) {
		getSession().delete(projectHistory);
		return projectHistory;
	}
	
	public ProjectHistory update(ProjectHistory projectHistory) {
		getSession().update(projectHistory);
		return projectHistory;
	}
}
