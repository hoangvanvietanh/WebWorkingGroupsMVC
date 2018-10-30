package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TeamDAO;
import com.java.vakapu.entity.Team;
import com.java.vakapu.model.TeamModel;

@Service
@Transactional
public class TeamServices {

	@Autowired
	private TeamServices teamServices;
	@Autowired
	private TeamDAO TeamDAO;
	
	public Team findById(int id)
	{
		return TeamDAO.findById(id);
	}
	
	public List<Team> findByEmail(String email)
	{
		return TeamDAO.findByEmail(email);
	}
	public Team updateTeam(Team team)
	{
		return TeamDAO.update(team);
	}
	
	public void updateTeamModel(TeamModel teamModel)
	{
		Team team=teamServices.findById(teamModel.getIdTeam());
		
		team.setName(teamModel.getName());
		team.setDescription(teamModel.getDescription());
		
		TeamDAO.update(team);
		
	}
	
	public Team createTeam(Team Team)
	{
		return TeamDAO.create(Team);
	}
}
