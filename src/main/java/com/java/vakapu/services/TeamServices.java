package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TeamDAO;
import com.java.vakapu.entity.Team;

@Service
@Transactional
public class TeamServices {

	@Autowired
	private TeamDAO TeamDAO;
	
	public Team findById(int id)
	{
		return TeamDAO.findById(id);
	}
	
	public long countMember(int idTeam)
	{
		return TeamDAO.countMember(idTeam);
	}
	
	public long countProject(int idTeam)
	{
		return TeamDAO.countProject(idTeam);
	}
	
	public List<Team> findByEmail(String email)
	{
		return TeamDAO.findByEmail(email);
	}
	
	public Team updateTeam(Team Team)
	{
		return TeamDAO.update(Team);
	}
	
	public Team createTeam(Team Team)
	{
		return TeamDAO.create(Team);
	}
}
