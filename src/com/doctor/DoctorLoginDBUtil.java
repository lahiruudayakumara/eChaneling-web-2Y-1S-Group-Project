package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DoctorLoginDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result;
	
	public static List<specalizedDoctor> getDoctor(String userId){
		ArrayList<specalizedDoctor> specalizedDoctor = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = " select * doctor where userId='"+ userId +"'";
			result = stmt.executeQuery(sql);
			
			while(result.next()) {
				String id = result.getString(1);
				String name = result.getString(2);
				String gmail = result.getString(3);
				String password = result.getString(4);
				
				specalizedDoctor spDoc = new specalizedDoctor(name, gmail, id, password);
				
				specalizedDoctor.add(spDoc);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return specalizedDoctor;
	}
	
	public static boolean validate(String userId, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM doctor WHERE userId='"+ userId +"' AND password='"+ password +"' ";

			
			result = stmt.executeQuery(sql);
			
			if(result.next()) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("unsuccess !!!");
		}
		return isSuccess;
		
	}

}
