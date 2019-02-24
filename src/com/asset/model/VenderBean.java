package com.asset.model;

public class VenderBean {



	private String productID;
	private String productName;
	private String locationID;
	private String city;
	private String date;
	
	//default constructor
	public VenderBean(){
		
	}
	//parameterized constructor
	
	public VenderBean(String productID, String productName, String locationID, String city, String date) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.locationID = locationID;
		this.city = city;
		this.date = date;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getLocationID() {
		return locationID;
	}

	public void setLocationID(String locationID) {
		this.locationID = locationID;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
}
