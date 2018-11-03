package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.FriendshipDAO;
import com.java.vakapu.entity.Friendship;

@Service
@Transactional
public class FriendshipServices {

	@Autowired
	private FriendshipDAO friendshipDAO;
	
	public List<Friendship> findFriend(String emailUser, int status)
	{
		return friendshipDAO.findFriend(emailUser,status);
	}
	
	public Friendship findFriendAndUser(String emailUser, String emailFriend)
	{
		return friendshipDAO.findFriendAndUser(emailUser, emailFriend);
	}
	
	public Friendship create(Friendship friend)
	{
		return friendshipDAO.create(friend);
	}
	
	public Friendship update(Friendship friend)
	{
		return friendshipDAO.update(friend);
	}
	
	public Friendship delete(Friendship friend)
	{
		return friendshipDAO.delete(friend);
	}
}
