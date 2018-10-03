package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.vakapu.dao.AccountDAO;
import com.java.vakapu.entity.Account;

@Service
public class AccountServices {

	@Autowired
	AccountDAO accountDAO;
	
	public List<Account> findAll()
	{
		return accountDAO.findAll();
	}
	
	public Account findByEmail(String email)
	{
		return accountDAO.findEmail(email);
	}
	
	public Account createAccount(Account account)
	{
		return accountDAO.create(account);
	}
	
	public Account createDelete(Account account)
	{
		return accountDAO.delete(account);
	}
	
	public Account updateAccount(Account account)
	{
		return accountDAO.update(account);
	}
}
