package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DoctorLoginDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement statement = null;
	private static ResultSet result;
	
	public static List<SpecalizedDoctor> getDoctor(String docEmail){
		ArrayList<SpecalizedDoctor> specalizedDoctor = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			statement = con.createStatement();
			
			String sql = " select * from doctor where email='"+ docEmail +"'";
			result = statement.executeQuery(sql);
			
			while(result.next()) {
				int id = result.getInt(1);
				String fullname = result.getString(2);
				String email = result.getString(3);
				String phoneNo = result.getString(4);;
				String password = result.getString(5);
				String Specialist = result.getString(6);
				String work = result.getString(7);
				
				SpecalizedDoctor spDoc = new SpecalizedDoctor(fullname, email, phoneNo, work, id, password, Specialist);
				
				specalizedDoctor.add(spDoc);
			}
		}
		catch(Exception e) {
			System.out.println("unsuccess !!!");
			e.printStackTrace();
		}
		
		return specalizedDoctor;
	}
	
	public static boolean validate(String docEmail, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			statement = con.createStatement();
			
			String sql = "select * from doctor where email='"+ docEmail +"' AND password='"+ password +"' ";

			
			result = statement.executeQuery(sql);
			
			if(result.next()) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			System.out.println("unsuccess !!!");
			e.printStackTrace();
		}
		return isSuccess;
		
	}

}
