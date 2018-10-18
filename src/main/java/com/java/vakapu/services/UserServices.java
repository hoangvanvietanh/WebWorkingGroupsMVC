package com.java.vakapu.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.ProfileDAO;
import com.java.vakapu.entity.User;

@Service
@Transactional
public class UserServices {

	@Autowired
	private ProfileDAO profileDAO;
	
	public User findByEmail(String email)
	{
		return profileDAO.find(email);
	}
	
	public User updateProfile(User user)
	{
		return profileDAO.update(user);
	}
	
	public User createProfile(User user)
	{
		return profileDAO.create(user);
	}
}
