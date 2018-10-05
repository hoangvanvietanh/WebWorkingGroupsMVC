package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.AccountRoleDao;
import com.java.vakapu.entity.AccountRole;

@Service
@Transactional
public class AccountRoleService {

	@Autowired
	private AccountRoleDao roleDao;
	
	public List<AccountRole> findAll()
	{
		return roleDao.findAllRoles();
	}
	
	public List<AccountRole> findByEmail(String email)
	{
		return roleDao.findByEmail(email);
	}
	
	public AccountRole createRole(AccountRole role)
	{
		return roleDao.createRole(role);
	}
	
	public AccountRole updateRole(AccountRole role)
	{
		return roleDao.updateRole(role);
	}
	
	public void deleteRole(AccountRole role)
	{
		roleDao.deleteRole(role);
	}
	
}
