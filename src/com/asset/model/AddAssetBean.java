package com.asset.model;

public class AddAssetBean {

	

	private String assets;
	private String productName;	
	private String productID;
	private String organization;
	private String price;


	//default constructor
	public AddAssetBean(){
		
	}

             //parameterized constructor
	public AddAssetBean(String assets, String productName, String productID, String organization, String price) {
		super();
		this.assets = assets;
		this.productName = productName;
		this.productID = productID;
		this.organization = organization;
		this.price = price;
	}

	public String getAssets() {
		return assets;
	}

	public void setAssets(String assets) {
		this.assets = assets;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}


	}