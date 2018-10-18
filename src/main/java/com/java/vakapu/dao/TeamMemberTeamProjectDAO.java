package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.TeamMemberTeamProject;

@Repository
public class TeamMemberTeamProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<TeamMemberTeamProject> findAll(){
		TypedQuery<TeamMemberTeamProject> query = getSession().createQuery("FROM TeamMemberTeamProject", TeamMemberTeamProject.class);
		List<TeamMemberTeamProject> getAll = query.getResultList();
		return getAll;
	}
	
	public List<TeamMemberTeamProject> findByIdProject(int id) {
		TypedQuery<TeamMemberTeamProject> query = getSession().createQuery("select a from TeamMemberTeamProject a where a.teamProject.id=:id",TeamMemberTeamProject.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
}
