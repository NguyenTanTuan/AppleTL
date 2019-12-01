package com.ivt.repositories;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.AccountEntity;
import com.ivt.enums.Gender;

@Repository
public interface AccountRepository extends CrudRepository<AccountEntity, Integer> {

	@Query(value = " select * from account a\n" + 
			"where a.userName like %?1%\n" + 
			"or a.name like %?1%\n" + 
			"or a.email like %?1%",nativeQuery = true)
	public List<AccountEntity> findBySearch(String searchTx);

	public List<AccountEntity> findAccountByGenderAndBirthdateBetween(Gender gender, LocalDate from, LocalDate to);

	AccountEntity findByUsernameAndPasswordAndNameAndEmailAndAddressAndPhone(String username, String password,
			String name, String email, String address, String phone);
	
	public AccountEntity findByEmailAndPassword(String email,String password);

}
