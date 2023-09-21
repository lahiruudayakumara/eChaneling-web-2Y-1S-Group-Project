package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class AdminDBUtil {
	public static List<Admin> validate (String userName, String password){
		ArrayList<Admin> admin = new ArrayList<>();
		
		//Create Database Connection
		String url = "jdbc:mysql://localhost:3306/echannelling";
		String user = "root";
		String pass = "";
		
		//Validate
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "SELECT * FROM admin WHERE userName = '" + userName + "' AND password = '" + password + "'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String userU = rs.getString(4);
				String passU = rs.getString(5);
				
				Admin a = new Admin(id, name, email, userU, passU);
				admin.add(a);
		
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return admin;
	}
}
