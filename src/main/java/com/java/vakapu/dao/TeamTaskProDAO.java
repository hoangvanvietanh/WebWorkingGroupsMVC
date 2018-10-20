package com.java.vakapu.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.TeamMemberTaskTeamProject;

@Repository
public class TeamTaskProDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public TeamMemberTaskTeamProject create(TeamMemberTaskTeamProject t)
	{
		getSession().save(t);
		return t;
	}
}
