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
	
	public List<Friendship> findFriend(String email)
	{
		return friendshipDAO.findFriend(email);
	}
}
