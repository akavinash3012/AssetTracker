package com.asset.model;


public class LoginBean {
	private String userName;
	private String password;
	private String auth;

	// setter ang getter
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getauth() {
		return auth;
	}

	public void setauth(String auth) {
		this.auth = auth;
	}

	// default constructor
	public LoginBean() {

	}

	// parameterized constructor
	public LoginBean(String userName, String password, String auth) {
		super();
		this.userName = userName;
		this.password = password;
		this.auth =auth;
	}

}