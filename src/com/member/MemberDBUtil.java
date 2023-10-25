package com.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MemberDBUtil {
	
	public static  boolean isSuccess;
	public static 	String sql;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean dropMessage(String name, String email, String phone, String subject, String message, String userName) {
			
		try {
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			sql = "INSERT INTO contact_us VALUES(0,'"+ name+"','"+email+"','"+phone+"','"+subject+"','"+message+"','"+userName+"')";
			
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
	
	public static boolean updateMessage(String id, String name, String email, String phone, String subject, String message) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			sql = "UPDATE contact_us SET name='"+name+"',email='"+email+"',phone='"+phone+"',subject='"+subject+"',message='"+message+"' WHERE messageId='"+convId+"'";
			
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteMessage(String id) {
		
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			sql = "DELETE FROM contact_us WHERE messageId='"+convId+"'";
			
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
