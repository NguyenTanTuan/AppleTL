package com.ivt.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.Account_RoleEntity;

@Repository
public interface AccountRoleRepository  extends CrudRepository<Account_RoleEntity, Integer>{

}
