/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ivt.entities.AccountEntity;
import com.ivt.entities.Account_RoleEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.enums.AccountRole;
import com.ivt.enums.Gender;
import com.ivt.repositories.AccountRepository;
import com.ivt.service.AccountRoleService;
import com.ivt.service.AccountService;

/**
 *
 * @author Tuan
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AccountService accountService;
	@Autowired
	private AccountRoleService accountRoleService;
	@Autowired
	private AccountRepository accountRepository;
	
	
	  @InitBinder
	    protected void initBinder(WebDataBinder binder) throws Exception {
	        binder.registerCustomEditor(List.class, "accRole", new CustomCollectionEditor(List.class) {
	            protected Account_RoleEntity convertElement(Object element) {
	                if (element instanceof String) {
	                    String id = (String) element;
	                    Account_RoleEntity accountRole = accountRoleService.findAccountRoleById(Integer.parseInt(id));
	                    return accountRole;
	                }
	                return null;
	            }
	        });
	    }


	@RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
	public String viewHome(Model model) {
		model.addAttribute("message", "Admin Home Page  1111 1");
		return "admin/home";
	}

	@RequestMapping(value = "/downloadCSVaccount")
	public void downloadCSVProduct(Model model, HttpServletResponse response) throws IOException {
		List<AccountEntity> account = accountService.getAccount();
		model.addAttribute("a", account);
		String COMMA_DELIMITER = ",";
		String LINE_SEPARATOR = "\n";
		response.setContentType("text/csv");
		String csvFileName = "AccountList.csv";
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"", csvFileName);
		response.setHeader(headerKey, headerValue);

		// Add header.
		ArrayList<String> rows = new ArrayList<String>();
		rows.add("User Name, PassWord ,ROLE,BirthDate,Gender,Email,Country,Status");
		rows.add("\n");
		for (AccountEntity accountlist : account) {
			StringBuffer result = new StringBuffer();

			result.append(String.valueOf(accountlist.getUsername())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getPassword())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getRole())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getBirthdate())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getGender())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getEmail())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getCountry())).append(COMMA_DELIMITER);
			result.append(String.valueOf(accountlist.getStatus())).append(COMMA_DELIMITER);

			rows.add(result.toString());
			rows.add(LINE_SEPARATOR);

		}
		Iterator<String> iter = rows.iterator();
		while (iter.hasNext()) {
			String outputString = (String) iter.next();
			response.getOutputStream().print(outputString);
		}
		response.getOutputStream().flush();
	}

//	public String generateCountry(String country) {
//		switch (country)) {
//		}
//
//		return country;
//	}

	@RequestMapping(value = "/listAccount", method = GET)
	public String listACcount(Model model, HttpSession session) {
		List<AccountEntity> account = (List<AccountEntity>) accountService.getAccount();
		session.setAttribute("account", account);

		model.addAttribute("gender", Gender.values());
		model.addAttribute("role", AccountRole.values());
		return "admin/listAccount";
	}

	@RequestMapping(value = "/active/{accountID}")
	public String actiec(Model model, @PathVariable("accountID") int accountID) {
		AccountEntity accountEntity = accountService.findAccountById(accountID);
		accountEntity.setStatus(true);
		accountService.saveAccount(accountEntity);

		List<AccountEntity> account = (List<AccountEntity>) accountService.getAccount();
		model.addAttribute("account", account);
		return "/admin/listAccount";
	}

	@RequestMapping(value = "/deActive/{accountID}")
	public String deActive(Model model, @PathVariable("accountID") int accountID) {
		AccountEntity accountEntity = accountService.findAccountById(accountID);
		accountEntity.setStatus(false);
		accountService.saveAccount(accountEntity);

		List<AccountEntity> account = (List<AccountEntity>) accountService.getAccount();
		model.addAttribute("account", account);
		return "/admin/listAccount";
	}

	private String[] countries = { "VIETNAM", "LAOS", "KOREA", "AMERICA" };
	private String[] statuses = { "Enable", "Disable" };

	@RequestMapping("/add-account")
	public String viewFormAccount(Model model) {
		AccountEntity account = new AccountEntity();
		List<Account_RoleEntity> roles = (List<Account_RoleEntity>) accountRoleService.getAccountRole();
		model.addAttribute("account", account);
		model.addAttribute("roles", roles);
		model.addAttribute("action", "admin/add-account");
		model.addAttribute("gender", Gender.values());
		model.addAttribute("countries", countries);
		model.addAttribute("role", AccountRole.values());
		model.addAttribute("statuses", statuses);
		return "admin/account-form";
	}

	@RequestMapping(value = "/add-account", method = RequestMethod.POST)
	public String addAccount(Model model, @ModelAttribute("account") AccountEntity account) {
		accountService.saveAccount(account);
		if (account.getId() > 0) {
			model.addAttribute("message", "add product successfully.");

		} else {
			model.addAttribute("message", "add product fail.");

		}
		return "redirect:/admin/listAccount";
	}

	@RequestMapping(value = "/save-account", method = RequestMethod.POST)
	public String saveAccount(Model model, @ModelAttribute("account") AccountEntity account) {
		accountService.saveAccount(account);
		return "redirect:/admin/listAccount";
	}

	@RequestMapping("/edit-account/{accountID}")
	public String viewFormEditAccount(Model model, @PathVariable("accountID") int accountID) {
		model.addAttribute("account", accountService.findAccountById(accountID));
		model.addAttribute("gender", Gender.values());
		model.addAttribute("role", AccountRole.values());
		model.addAttribute("countries", countries);
		model.addAttribute("statuses", statuses);
		model.addAttribute("action", "admin/edit-account");
		return "admin/account-form";
	}
	// EDIT ACCOUNT //

	@RequestMapping(value = "//edit-account", method = RequestMethod.POST)
	public String editAccount(Model model, @ModelAttribute("account") AccountEntity account) {
		accountService.saveAccount(account);
		return "redirect:/admin/listAccount";
	}

	@RequestMapping("/delete-account/{accountID}")
	public String deleteAccount(Model model, @PathVariable("accountID") int accountID) {
		AccountEntity delete = accountService.findAccountById(accountID);
		if (delete.getId() > 0) {
			accountService.deleteAccount(accountID);
			return "redirect:/admin/listAccount";
		} else {
			return "redirect:/admin/listAccount";

		}
	}

	//////// SEARCH ACCOUNT/////////////

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchAccount(Model model, @ModelAttribute("searchTx") String searchTx) {
		model.addAttribute("account", accountRepository.findBySearch(searchTx));
		return "/admin/listAccount";
	}

	//////// SEARCH ACCOUNT BY BIRTHDAY AND GENDER /////////////
	@RequestMapping(value = "/searchByGenderAndAge", method = RequestMethod.POST)
	public String searchGenderAge(Model model, @RequestParam(value = "gender") String gender,
			@RequestParam(value = "from") int from, @RequestParam(value = "to") int to) {
		model.addAttribute("account", accountService.findByGenderAndAge(gender, from, to));
		return "/admin/listAccount";
	}

}
