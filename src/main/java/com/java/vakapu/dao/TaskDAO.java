package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;

@Repository
public class TaskDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<TaskTeamProject> findAll(){
		TypedQuery<TaskTeamProject> query = getSession().createQuery("FROM TaskTeamProject", TaskTeamProject.class);
		List<TaskTeamProject> contact = query.getResultList();
		return contact;
	}
	
	public List<TeamMemberTaskTeamProject> findByEmailUser(String email) {
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("select a from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamMember.member.email=:email",TeamMemberTaskTeamProject.class);
		query.setParameter("email", email);
		return query.getResultList();
	}
	public List<TeamMemberTaskTeamProject> findByIdProject(int id)
	{
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("select a from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamProject.id=:id", TeamMemberTaskTeamProject.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	
//	public List<TaskTeamProject> findByIdProject(int id) {
//		TypedQuery<TaskTeamProject> query = getSession().createQuery("select a from TaskTeamProject a where a.project.idproject=:id",TaskTeamProject.class);
//		query.setParameter("id", id);
//		return query.getResultList();
//	}
	public TaskTeamProject find(int id) {
		return getSession().find(TaskTeamProject.class, id);
	}
	
	public TaskTeamProject create(TaskTeamProject taskTeamProject) {
		getSession().persist(taskTeamProject);
		return taskTeamProject;
	}
	
	public TaskTeamProject delete(TaskTeamProject taskTeamProject) {
		getSession().delete(taskTeamProject);
		return taskTeamProject;
	}
	
	public TaskTeamProject update(TaskTeamProject taskTeamProject) {
		getSession().update(taskTeamProject);
		return taskTeamProject;
	}
	
	
}
