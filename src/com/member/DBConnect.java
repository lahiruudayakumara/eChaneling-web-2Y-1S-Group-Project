package com.member;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * The DBConnect class provides a method for establishing a connection to a MySQL database.
 */
public class DBConnect {
	private static final String url = "jdbc:mysql://localhost:3306/echannelling";//use costant variables
	private static final String userName = "root";//use costant variables
	private static final String password = "2023";//use costant variables
	private static Connection con;
	
	/**
     * Establishes a connection to the MySQL database and returns the Connection object.
     *
     * @return A Connection object representing the database connection.
     */
	public static Connection getConnection() {
		try {
			// Load the MySQL JDBC driver class
			Class.forName("com.mysql.jdbc.Driver");
			
			// Establish the database connection using the specified URL, username, and password
			con = DriverManager.getConnection(url, userName, password);
		}
		// Handle any exceptions that may occur during the database connection process
		catch (Exception e) {
			System.out.println("Database Connection Failed!");
		}
		
		return con;
	}
}