
package com.asset.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.asset.model.AddUserBean;
import com.asset.util.DBConnection;
 
public class AdduserDaoImpl {
 
 public String addUser(AddUserBean adduserBean)
 {
  String userName = adduserBean.getUserName();
  String password =adduserBean.getPassword();
  String email=adduserBean.getEmail();
  String organization=adduserBean.getOrganization();
  String contactNumber=adduserBean.getContactNumber();
  
 
 Connection con = null;
 PreparedStatement pS= null;
 
 try
 {
 con = DBConnection.getConnection();
//Insert user details into the table
 String query = "insert into user(UserName,password,Auth,EmailAddress,Organization,ContactNumber,Approve) values (?,?,?,?,?,?,?)";  
//Making use of prepared statements here to insert bunch of data
 
 pS = con.prepareStatement(query); 
 
 pS.setString(1, userName);
 pS.setString(2, password);
 pS.setString(3, "1");
 pS.setString(4, email);
 pS.setString(5, contactNumber);
 pS.setString(6, organization);
 pS.setString(7, "0");
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