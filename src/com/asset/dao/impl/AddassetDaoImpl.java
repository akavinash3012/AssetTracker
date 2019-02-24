
package com.asset.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.asset.model.AddAssetBean;
import com.asset.util.DBConnection;
 
public class AddassetDaoImpl {
 
 public String addAsset(AddAssetBean addassetBean)
 {
  String assets = addassetBean.getAssets();
  String productName =addassetBean.getProductName();
  String productID=addassetBean.getProductID();
  String organization=addassetBean.getOrganization();
  String price=addassetBean.getPrice();
  
 
 Connection con = null;
 PreparedStatement pS= null;
 
 try
 {
 con = DBConnection.getConnection();
//Insert user details into the table
 String query = "insert into assets(assets,productName,productID,organization,price) values (?,?,?,?,?)";  
//Making use of prepared statements here to insert bunch of data
 
 pS = con.prepareStatement(query); 
 
 pS.setString(1, assets);
 pS.setString(2, productName);
 pS.setString(3, productID);
 pS.setString(4, organization);
 pS.setString(5, price);
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