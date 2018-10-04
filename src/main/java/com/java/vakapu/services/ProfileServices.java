package com.java.vakapu.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.ProfileDAO;
import com.java.vakapu.entity.Profile;

@Service
@Transactional
public class ProfileServices {

	@Autowired
	private ProfileDAO profileDAO;
	
	public Profile findByEmail(String email)
	{
		return profileDAO.find(email);
	}
	
	public Profile updateProfile(Profile profile)
	{
		return profileDAO.update(profile);
	}
	
	public Profile createProfile(Profile profile)
	{
		return profileDAO.create(profile);
	}
}
