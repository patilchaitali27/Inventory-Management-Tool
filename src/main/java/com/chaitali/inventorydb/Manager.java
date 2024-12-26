package com.chaitali.inventorydb;

import javax.persistence.Entity;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Manager {
	@Id
	String email;
	String password;
	@Override
	public String toString() {
		return "Manager [email=" + email + ", password=" + password + "]";
	}
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Manager(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
