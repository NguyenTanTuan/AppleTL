package com.ivt.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.ivt.entities.AccountEntity;
import com.ivt.entities.Account_RoleEntity;
import com.ivt.service.AccountService;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private AccountService accountService;
	public Authentication authenticate(Authentication a) throws AuthenticationException {
		String email= a.getName().trim();
		String password=a.getCredentials().toString().trim();
		if(!StringUtils.isEmpty(email)&& !StringUtils.isEmpty(password)) {
			AccountEntity account=accountService.findAccountByEmailAndPassword(email, password);
			if(account !=null && account.getId()>0) {
				List<GrantedAuthority> roles= new ArrayList<GrantedAuthority>();
				for(Account_RoleEntity accountRole: account.getAccRole()) {
					 roles.add(
	                            new SimpleGrantedAuthority(accountRole.getRole().toString().trim())
	                    );

				}
                return new UsernamePasswordAuthenticationToken(account, account.getEmail(), roles);

			}else {
                return null;

			}
		}else {
		return null;
		}
	}

	public boolean supports(Class<?> type) {
        return type.equals(UsernamePasswordAuthenticationToken.class);
	}
	
	
	

}
