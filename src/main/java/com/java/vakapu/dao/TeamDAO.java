package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Member;
import com.java.vakapu.entity.Team;

@Repository
public class TeamDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Team> findAll(){
		TypedQuery<Team> query = getSession().createQuery("FROM Team", Team.class);
		List<Team> contact = query.getResultList();
		return contact;
	}
	
	public List<Team> findByEmail(String email)
	{
		TypedQuery<Team> query = getSession().createQuery("select a from Team a join a.member b where b.email=:email",Team.class);
		query.setParameter("email", email);
		return query.getResultList();
	}
	
	public Team findById(int id) {
		return getSession().find(Team.class, id);
	}
	
	public Team create(Team Team) {
		getSession().save(Team);
		return Team;
	}
	
	public Team delete(Team Team) {
		getSession().delete(Team);
		return Team;
	}
	
	public Team update(Team Team) {
		getSession().update(Team);
		return Team;
	}
}
