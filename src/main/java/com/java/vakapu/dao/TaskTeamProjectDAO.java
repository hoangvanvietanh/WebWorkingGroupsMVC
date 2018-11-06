package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;

@Repository
public class TaskTeamProjectDAO {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public TaskTeamProject find(int id) {
		return getSession().find(TaskTeamProject.class, id);
	}
	
	public List<TeamMemberTaskTeamProject> findAll(){
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("FROM TeamMemberTaskTeamProject", TeamMemberTaskTeamProject.class);
		List<TeamMemberTaskTeamProject> getAll = query.getResultList();
		return getAll;
	}
	
	public List<TeamMemberTaskTeamProject> findByIdProject(int idProject, int idTask) {
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("select a from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamProject.id=:idProject and a.taskTeamProject.id=:idTask",TeamMemberTaskTeamProject.class);
		query.setParameter("idProject", idProject);
		query.setParameter("idTask", idTask);
		return query.getResultList();
	}
	
	public TeamMemberTaskTeamProject findByIdTaskEmail(String email, int idTask) {
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("select a from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamMember.member.email=:email and a.taskTeamProject.id=:idTask",TeamMemberTaskTeamProject.class);
		query.setParameter("email", email);
		query.setParameter("idTask", idTask);
		return query.getSingleResult();
	}
	
	public List<TeamMemberTaskTeamProject> findByIdProjectAll(int idProject) {
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("select a from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamProject.id=:idProject",TeamMemberTaskTeamProject.class);
		query.setParameter("idProject", idProject);
		return query.getResultList();
	}
	
	public List<Integer> findByIdProjectAll2(int idProject) {
		TypedQuery<Integer> query = getSession().createQuery("select distinct a.taskTeamProject.id from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamProject.id=:idProject",Integer.class);
		query.setParameter("idProject", idProject);
		return query.getResultList();
	}
	
	public long findTaskDoneByIdProject(int idProject) {
		Query<Long> query = getSession().createQuery("select count(distinct a.taskTeamProject.id) from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.teamProject.id=:idProject and a.taskTeamProject.completed like '1'",Long.class);
		query.setParameter("idProject", idProject);
		return query.uniqueResult();
	}
	
	public List<TeamMemberTaskTeamProject> findByIdMemberProject(int id) {
		TypedQuery<TeamMemberTaskTeamProject> query = getSession().createQuery("select a from TeamMemberTaskTeamProject a where a.teamMemberTeamProject.id=:id",TeamMemberTaskTeamProject.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	
	public TeamMemberTaskTeamProject create(TeamMemberTaskTeamProject t)
	{
		getSession().save(t);
		return t;
	}
	
	public TeamMemberTaskTeamProject delete(TeamMemberTaskTeamProject t)
	{
		getSession().delete(t);
		return t;
	}
}
