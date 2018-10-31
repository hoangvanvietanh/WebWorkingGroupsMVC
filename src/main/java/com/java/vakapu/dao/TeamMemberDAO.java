package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.TeamMember;

@Repository
public class TeamMemberDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<TeamMember> findAll(){
		TypedQuery<TeamMember> query = getSession().createQuery("FROM TeamMember", TeamMember.class);
		List<TeamMember> user = query.getResultList();
		return user;
	}
	
	public TeamMember findMemberById(int id)
	{
		return getSession().find(TeamMember.class, id);
	}
	
	public List<TeamMember> findByEmail(String email) {
		TypedQuery<TeamMember> query=getSession().createQuery("from TeamMember a where a.member.email=:email", TeamMember.class);
		query.setParameter("email", email);
		List<TeamMember> result= query.getResultList();
		return result;
	}
	
	public List<TeamMember> findUserByIdTeam(int id)
	{
		TypedQuery<TeamMember> query=getSession().createQuery("from TeamMember a where a.team.idTeam=:id", TeamMember.class);
		query.setParameter("id", id);
		List<TeamMember> result= query.getResultList();
		return result;
	}
	public TeamMember createTeamMember(TeamMember teamMember)
	{
		getSession().persist(teamMember);
		return teamMember;
	}
	
	public TeamMember updateTeamMember(TeamMember teamMember)
	{
		getSession().update(teamMember);
		return teamMember;
	}
	
	public TeamMember deleteTeamMember(TeamMember teamMember)
	{
		getSession().delete(teamMember);
		return teamMember;
	}
	
	public TeamMember getUserTeam(int idTeam,String email)
	{
		String hql="select a from TeamMember a where a.team.idTeam=:id and a.member.email=:email";
		TypedQuery<TeamMember> query= getSession().createQuery(hql,TeamMember.class);
		query.setParameter("id", idTeam);
		query.setParameter("email", email);
		TeamMember result=query.getSingleResult();
		return result;
		
	}
	
}
