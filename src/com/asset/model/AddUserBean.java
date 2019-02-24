package com.asset.model;

public class AddUserBean {


	private String userName;
	private String password;
	private String email;
	private String organization;
	private String contactNumber;
	
	//default constructor
	public AddUserBean(){
		
	}
	//parameterized constructor
	public AddUserBean(String userName, String password, String email, String organization, String contactNumber) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.organization = organization;
		this.contactNumber = contactNumber;
	}
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	
}
