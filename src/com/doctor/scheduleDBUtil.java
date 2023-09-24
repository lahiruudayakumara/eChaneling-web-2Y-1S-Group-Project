package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class scheduleDBUtil {
	
	public static boolean createSchedule(String docName, String regNum, String date, String startTime, String endTime, String location){
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/demo";
		String user = "root";
		String pass = "219541@Com";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement statement = con.createStatement();
			
			String sql = "insert into shedule values (0,'"+ docName +"', '"+ regNum +"', '"+ date +"', '"+ startTime +"', '"+ endTime +"', '"+ location +"')";
			
			int result = statement.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
}
