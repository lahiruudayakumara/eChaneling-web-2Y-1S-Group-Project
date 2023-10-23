/*
Name : W D L UDAYAKUMARA
SID : IT22889324
Group: 4.2
Github Profile: https://github.com/lahiruudayakumara
 */
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
	
	//Get Login Admin Details
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
				
				Person a = new Admin(id, fName, email, mobile, passU, uName, uRole);
				a.setProfessional(new AdminProfessional()); // Change the professional behavior at runtime.
				a.showMsg(); // Perform the new flying behavior.
				a.displayInfo();
				admin.add((Admin) a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
	
	//Count Doctors records in DB
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
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public static boolean updateAdmin(int id, String fname, String email, String mobile, String password, String uName, String uRole) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update admin set fullname='"+fname+"', userName='"+uName+"', userRole='"+uRole+"', email='"+email+"', phoneNo='"+mobile+"', password='"+password+"' where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs> 0) {
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
}
