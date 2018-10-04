package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.AccountRole;

@Repository
public class AccountRoleDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<AccountRole> findRoles(String email) {
		Session session = getSession();
		TypedQuery<AccountRole> query= session.createQuery("from account_roles", AccountRole.class);
		List<AccountRole> result = query.getResultList();
		return result;
	}
	
	public List<AccountRole> findByEmail(String email)
	{
		Session session = getSession();
		TypedQuery<AccountRole> query=session.createQuery("from account_roles a where a.email=:email", AccountRole.class);
		List<AccountRole> result=query.getResultList();
		return result;
	}
	
	public AccountRole createRole(AccountRole role)
	{
		int id=(int) getSession().save(role);
		role.setId(id);
		return role;
	}
	public AccountRole updateRole(AccountRole role)
	{
		Session session = getSession();
		session.update(role);
		return role;
	}
	
	public void deleteRole(AccountRole role)
	{
		Session session = getSession();
		session.delete(role);
	}

}
