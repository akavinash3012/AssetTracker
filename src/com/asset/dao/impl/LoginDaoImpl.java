package com.asset.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.asset.model.LoginBean;
import com.asset.util.DBConnection;

public class LoginDaoImpl {
	public String authenticateUser(LoginBean loginBean) {
		// Keeping values in temporary variables.
		String username = loginBean.getUserName();
		String password = loginBean.getPassword();
		String Auth = loginBean.getauth();
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String userNameDB = "";
		String passwordDB = "";
		String roleDB = "";
		String approve = "";
		// establishing connection
		try {
			con = DBConnection.getConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("select UserName,password,Auth ,Approve from user");
			while (resultSet.next()) {
				userNameDB = resultSet.getString("UserName");
				passwordDB = resultSet.getString("password");
				roleDB = resultSet.getString("Auth");
				approve = resultSet.getString("Approve");

				if (username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("0")) {
					return "Admin_Role";
				} else if (username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("1")
						&& approve.equals("0")) {
					return "block";
				} else if (username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("1")) {
					return "User_Role";
				}
				else if (username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("2")) {
					return "Vendor_Role";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
}