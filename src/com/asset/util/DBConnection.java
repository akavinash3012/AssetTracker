package com.asset.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
		private static Connection connection;

		public static Connection getConnection() {
			
			String username="root";
			String password="root";
			String UrlSql="jdbc:mysql://localhost:3306/assettracker";
				
			try {
				//Load The driver Class
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(UrlSql, username, password);
	
			} catch (SQLException e) {
				System.out.println("Connection Failure");
			} catch (ClassNotFoundException e) {
				System.out.println("Class Not Found Error!!" +e);
			}

			return connection;
		}

	
}
