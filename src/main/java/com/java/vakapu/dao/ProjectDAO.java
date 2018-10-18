package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;


@Repository
public class ProjectDAO {

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
	
	public List<TeamMemberTeamProject> findByEmail(String email) {
		TypedQuery<TeamMemberTeamProject> query = getSession().createQuery("select a from TeamMemberTeamProject a where a.teamMember.member.email=:email",TeamMemberTeamProject.class);
		query.setParameter("email", email);
		return query.getResultList();
	}
	
	public List<TeamMemberTeamProject> findByIdTeam(int id) {
		TypedQuery<TeamMemberTeamProject> query = getSession().createQuery("select a from TeamMemberTeamProject a where a.teamMember.team.idTeam=:id",TeamMemberTeamProject.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	
	public TeamProject find(int id) {
		return getSession().find(TeamProject.class, id);
	}
	
	public TeamProject create(TeamProject TeamProject) {
		getSession().save(TeamProject);
		return TeamProject;
	}
	
	public TeamProject delete(TeamProject TeamProject) {
		getSession().delete(TeamProject);
		return TeamProject;
	}
	
	public TeamProject update(TeamProject TeamProject) {
		getSession().update(TeamProject);
		return TeamProject;
	}
	
}
