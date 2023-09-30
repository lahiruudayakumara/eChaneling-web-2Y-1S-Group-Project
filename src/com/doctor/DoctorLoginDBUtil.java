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
	
	public static List<specalizedDoctor> getDoctor(int userId){
		ArrayList<specalizedDoctor> specalizedDoctor = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = " select * from doctor where id='"+ userId +"'";
			result = stmt.executeQuery(sql);
			
			while(result.next()) {
				int id = result.getInt(1);
				String fullname = result.getString(2);
				String email = result.getString(3);
				String phoneNo = result.getString(4);;
				String password = result.getString(5);
				String Specialist = result.getString(6);
				String work = result.getString(7);
				
				specalizedDoctor spDoc = new specalizedDoctor(fullname, email, phoneNo, id, password, Specialist, work);
				
				specalizedDoctor.add(spDoc);
			}
		}
		catch(Exception e) {
			System.out.println("unsuccess !!!");
			e.printStackTrace();
		}
		
		return specalizedDoctor;
	}
	
	public static boolean validate(int userId, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from doctor where id='"+ userId +"' AND password='"+ password +"' ";

			
			result = stmt.executeQuery(sql);
			
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
