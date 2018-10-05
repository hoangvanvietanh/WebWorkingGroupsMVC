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
	
	public List<AccountRole> findAllRoles() {
		TypedQuery<AccountRole> query= getSession().createQuery("FROM AccountRole", AccountRole.class);
		List<AccountRole> result = query.getResultList();
		return result;
	}
	
	public List<AccountRole> findByEmail(String email)
	{
		TypedQuery<AccountRole> query=getSession().createQuery("from AccountRole a where a.email=:email",AccountRole.class);
		query.setParameter("email", email);
		List<AccountRole> result=query.getResultList();
		return result;
	}
	
	public AccountRole createRole(AccountRole role)
	{
		getSession().save(role);
		
		return role;
	}
	public AccountRole updateRole(AccountRole role)
	{
		getSession().update(role);
		return role;
	}
	
	public void deleteRole(AccountRole role)
	{
		getSession().delete(role);
	}

}
