package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static final String URL = "jdbc:mysql://localhost:3306/echannelling";
	private static final String USER = "root";
	private static final String PASS = "2023";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(URL, USER, PASS);
			
		}
		catch(Exception e){
			System.out.println("Database connection is not success !!!");
		}
		
		return con;
	}
}
