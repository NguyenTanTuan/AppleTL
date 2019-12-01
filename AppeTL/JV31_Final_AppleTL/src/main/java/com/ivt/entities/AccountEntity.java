package com.ivt.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.ivt.enums.AccountRole;
import com.ivt.enums.Gender;

@Entity
@Table(name = "account")
public class AccountEntity extends Personalnfo implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String password;
	private boolean status;
	
	private String email;
	private String country;
	private String phone;
	private String address;
	private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate  birthdate;
	
	
	@Enumerated(EnumType.STRING)
	private Gender gender = Gender.MALE;

	@Enumerated(EnumType.STRING)
	private AccountRole role = AccountRole.ROLE_USER;

	@OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
	private List<CustomerEntity> customer;

	@OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
	private List<ReviewEntity> reviewList;

	@OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
	private List<FavoriteEntity> favorite;
	
	@OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
	private List<OrderEntity> order;

	
	
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.MERGE})
    @JoinTable(name = "account_role",
            joinColumns = @JoinColumn(name = "account_id",
                    referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id",
                    referencedColumnName = "id"))
    private List<Account_RoleEntity> accRole;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {

		this.password = password;
	}

	public boolean getStatus() {

		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	
	public List<Account_RoleEntity> getAccRole() {
		return accRole;
	}

	public void setAccRole(List<Account_RoleEntity> accRole) {
		this.accRole = accRole;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<CustomerEntity> getCustomer() {
		return customer;
	}

	public void setCustomer(List<CustomerEntity> customer) {
		this.customer = customer;
	}

	public List<ReviewEntity> getReviewList() {
		return reviewList;
	}

	public void setReviewList(List<ReviewEntity> reviewList) {
		this.reviewList = reviewList;
	}

	public List<FavoriteEntity> getFavorite() {
		return favorite;
	}

	public void setFavorite(List<FavoriteEntity> favorite) {
		this.favorite = favorite;
	}

	public List<OrderEntity> getOrder() {
		return order;
	}

	public void setOrder(List<OrderEntity> order) {
		this.order = order;
	}

	public AccountRole getRole() {
		return role;
	}

	public void setRole(AccountRole role) {
		this.role = role;
	}

	
	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(LocalDate birthdate) {
		this.birthdate = birthdate;
	}
	
	
			

}
