package com.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class MemberDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean dropMessage(String name, String email, String phone, String subject, String message) {
		
		boolean isSuccess = false;
		
		try {
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO contact_us VALUES(0,'"+ name+"','"+email+"','"+phone+"','"+subject+"','"+message+"')";
			
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
