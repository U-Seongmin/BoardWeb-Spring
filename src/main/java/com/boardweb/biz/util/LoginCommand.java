package com.boardweb.biz.util;

import org.hibernate.annotations.Entity;

@Entity
public class LoginCommand {
	private String id;
	private String password;
    //------------------------------------------------------------
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
    //------------------------------------------------------------
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    //------------------------------------------------------------
}
