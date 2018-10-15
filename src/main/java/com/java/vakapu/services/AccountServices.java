package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.AccountDAO;
import com.java.vakapu.entity.Account;

@Service
@Transactional
public class AccountServices {

	@Autowired
	private AccountDAO accountDao;
	
	public List<Account> findAll()
	{
		return accountDao.findAll();
	}
	
	public Account findByEmail(String email)
	{
		return accountDao.findByEmail(email);
	}
	
	public Account createAccount(Account account)
	{
		return accountDao.createAccount(account);
	}
	
	public Account updateAccount(Account account)
	{
		return accountDao.updateAccount(account);
	}
	
	public void deleteAccount(Account account)
	{
		accountDao.deleteAccount(account);
	}
	
	public void deletePassword(Account account)
	{
		account.setPassword(null);
	}
	
	public String getEmailUser()
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}
}
