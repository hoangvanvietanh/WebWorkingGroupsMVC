package com.java.vakapu.model;

import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.AccountRole;

public class AccountRoleModel {
	private int id;
	private String email;
	private Account role;
	
	public AccountRole toAccount(AccountRole role)
	{
		this.setId(role.getId());
		this.setEmail(role.getEmail());
		this.setRole(role.getRole());
		return role;
	}
	
	public void fromAccount()
	{
		AccountRole role=new AccountRole();
		role.setId(this.getId());
		role.setEmail(this.getEmail());
		role.setRole(this.getRole());
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Account getRole() {
		return role;
	}
	public void setRole(Account account) {
		this.role = account;
	}
	
	
	
}
