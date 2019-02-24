package com.asset.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.asset.model.VenderBean;
import com.asset.util.DBConnection;
 
public class VenderDaoImpl {
 
 public String addLocation(VenderBean venderBean)
 {
  String productID = venderBean.getProductID();
  String productName = venderBean.getProductName();
  String locationID =venderBean.getLocationID();
  String city=venderBean.getCity();
  String date=venderBean.getDate();
  
 
 Connection con = null;
 PreparedStatement pS= null;
 
 try
 {
 con = DBConnection.getConnection();
//Insert user details into the table
 String query = "insert into assetlocation(productID,productName,locationID,city,date) values (?,?,?,?,?)";  
//Making use of prepared statements here to insert bunch of data
 
 pS = con.prepareStatement(query); 
 
 pS.setString(1, productID);
 pS.setString(2, productName);
 pS.setString(3, locationID);
 pS.setString(4, city);
 pS.setString(5, date);
 int i= pS.executeUpdate();

//Just to ensure data has been inserted into the database
 if (i!=0)
 {
	 return "SUCCESS";
 }
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 
 return "Oops.. Something went wrong there..!";  
 }
}