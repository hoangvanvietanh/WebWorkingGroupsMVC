package com.java.vakapu.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Member;

@Repository
public class MemberDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Member> findAll(){
		TypedQuery<Member> query = getSession().createQuery("FROM Member", Member.class);
		List<Member> member = query.getResultList();
		return member;
	}
	public List<Member> findByIdTeam(int id) {
		TypedQuery<Member> query = getSession().createQuery("select a from Member a join a.team b where b.id=:id",Member.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	
	public List<Member> findByTeamId(int id) {
		TypedQuery<Member> query = getSession().createQuery("select a from Member a where a.team.id=:id",Member.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	public Member find(int id) {
		return getSession().find(Member.class, id);
	}
	
	public Member create(Member Member) {
		getSession().save(Member);
		return Member;
	}
	
	public Member delete(Member Member) {
		getSession().delete(Member);
		return Member;
	}
	
	public Member update(Member Member) {
		getSession().update(Member);
		return Member;
	}
}
