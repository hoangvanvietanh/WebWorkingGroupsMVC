package com.java.vakapu.services;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.MemberDAO;
import com.java.vakapu.entity.Member;

@Service
@Transactional
public class MemberServices {

	@Autowired
	private MemberDAO MemberDAO;
	
	public List<Member> findByIdTeam(int id)
	{
		return MemberDAO.findByIdTeam(id);
	}
	
	public Member updateMember(Member Member)
	{
		return MemberDAO.update(Member);
	}
	
	public Member createMember(Member Member)
	{
		return MemberDAO.create(Member);
	}
}
