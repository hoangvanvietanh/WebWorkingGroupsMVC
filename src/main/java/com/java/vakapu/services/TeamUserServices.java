package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TeamMemberDAO;
import com.java.vakapu.entity.TeamMember;

@Service
@Transactional
public class TeamUserServices {

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
	
	public List<TeamMember> findUserByIdTeam(int id)
	{
		return teamMemberDAO.findUserByIdTeam(id);
	}
}
