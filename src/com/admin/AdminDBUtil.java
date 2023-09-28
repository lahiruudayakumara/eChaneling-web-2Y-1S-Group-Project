package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class AdminDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Admin> validate (String userName, String password){
		ArrayList<Admin> admin = new ArrayList<>();
		
		//Validate
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM admin WHERE userName = '" + userName + "' AND password = '" + password + "'";
			rs = stmt.executeQuery(sql);
			
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
