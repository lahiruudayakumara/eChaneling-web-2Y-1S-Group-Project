package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class AdminDBUtil {
	
	private static boolean isSucess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate (String userName, String password){
	
		//Validate admin userName and Password
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM admin WHERE userName = '" + userName + "' AND password = '" + password + "'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSucess = true;
			} else {
				isSucess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucess;
	}
	
	public static List<Admin> getAdmin(String userName){
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM admin WHERE userName = '" + userName + "'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String uName = rs.getString(3);
				String uRole = rs.getString(4);
				String email = rs.getString(5);
				String mobile = rs.getString(6);
				String passU = rs.getString(7);
				
				Admin a = new Admin(id, fName, email, mobile, passU, uName, uRole);
				admin.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
	
	public static List<Count> getCount(){
		
		ArrayList<Count> count = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM doctor ";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int doctor = rs.getInt(1);
				
				
				Count c = new Count();
				c.setDoctor(doctor);
				count.add(c);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
}
