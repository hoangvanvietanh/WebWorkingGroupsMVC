package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TeamMemberDAO;
import com.java.vakapu.entity.TeamMember;

@Service
@Transactional
public class TeamMemberServices {

	@Autowired
	private TeamMemberDAO teamMemberDAO;
	
	public List<TeamMember> findAll()
	{
		return teamMemberDAO.findAll();
	}
	
	public List<TeamMember> findByEmai(String email)
	{
		return teamMemberDAO.findByEmail(email);
	}
	
	public List<TeamMember> findByIdTeam(int id)
	{
		return teamMemberDAO.findUserByIdTeam(id);
	}
	
	public TeamMember create(TeamMember teamMember)
	{
		return teamMemberDAO.createTeamMember(teamMember);
	}
	
	public TeamMember delete(TeamMember teamMember)
	{
		return teamMemberDAO.deleteTeamMember(teamMember);
	}
	
	public List<TeamMember> findUserByIdTeam(int id)
	{
		return teamMemberDAO.findUserByIdTeam(id);
	}
	
	public TeamMember getUserTeam(int idTeam, String email)
	{
		return teamMemberDAO.getUserTeam(idTeam, email);
	}
}
