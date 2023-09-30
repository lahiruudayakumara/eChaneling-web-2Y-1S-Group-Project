package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private static String url = "jdbc:mysql://localhost:3306/echannelling";
	private static String user = "root";
	private static String password = "2023";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password);
			
		}
		catch(Exception e){
			System.out.println("Database connection is not success !!!");
		}
		
		return con;
	}
}
