package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DoctorDBUtil {
	
	public static boolean addDoctor(String docName, String docMobile) {
		boolean isSucess = false;
		
		//Create Database Connection
		String url = "jdbc:mysql://localhost:3306/echannelling";
		String user = "root";
		String pass = "";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert into doctor(0, '"+docName+"', '"+docMobile+"')";
			int doc = stmt.executeUpdate(sql);
			
			if(doc > 0) {
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
