package com.ivt.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivt.entities.AccountEntity;
import com.ivt.enums.Gender;
import com.ivt.repositories.AccountRepository;

@Service
public class AccountService {
	
	@Autowired
	private AccountRepository accountRepository;
	
	
	public List<AccountEntity> getAccount(){
		return (List<AccountEntity>)accountRepository.findAll();
	}
	
	public AccountEntity findAccountById(int id) {
		return accountRepository.findOne(id);
	}
	
	public AccountEntity saveAccount(AccountEntity account) {
		 return accountRepository.save(account);
	}
	
	public boolean deleteAccount(int id) {
		accountRepository.delete(id);
		return accountRepository.exists(id);
	}
	
//	public List<AccountEntity> findBySearch(String searchTx){
//		return (List<AccountEntity>)accountRepository.findBySearch("searchTx");
//	}
	
	public AccountEntity findAccountByEmailAndPassword(String email,String password){
		return accountRepository.findByEmailAndPassword(email, password);
	}
	
	
	
	//// LOCALDATE.NOW() THI LAY RA DC HIEN TAI 2019-10-20   .GETYEAR LA LAY RA DC NAM DO LA 2019////////////
	public List<AccountEntity> findByGenderAndAge(String gender, int ageTo,int ageFrom){
		Gender g= Gender.valueOf(gender);
		int yearFrom= LocalDate.now().getYear()- ageFrom;
		int yearTo= LocalDate.now().getYear() -ageTo;
		LocalDate from= LocalDate.of(yearFrom, 01, 01);
		LocalDate to=LocalDate.of(yearTo, 12, 31);
		return (List<AccountEntity>) accountRepository.findAccountByGenderAndBirthdateBetween(g, from, to);
	}

}
