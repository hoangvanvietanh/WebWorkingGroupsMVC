package com.java.vakapu.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.AccountRole;

@Repository
public class AccountRoleDao {
	
	public List<AccountRole> findRoles(String email) {
		
		List<AccountRole> roles = new ArrayList<>();
		
		return roles;
	}

}
