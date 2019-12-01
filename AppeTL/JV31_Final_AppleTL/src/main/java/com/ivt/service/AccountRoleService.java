package com.ivt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivt.entities.Account_RoleEntity;
import com.ivt.repositories.AccountRoleRepository;

@Service
public class AccountRoleService {
	@Autowired
	public AccountRoleRepository accountRoleRepository;
	
	public List<Account_RoleEntity> getAccountRole(){
		return (List<Account_RoleEntity>) accountRoleRepository.findAll();
	}
	
	public Account_RoleEntity findAccountRoleById(int id) {
		Account_RoleEntity accountRole=accountRoleRepository.findOne(id);
		return accountRole!=null ? accountRole : new Account_RoleEntity();
	}

}
