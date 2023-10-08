package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class scheduleDBUtil {
	public static boolean createSchedule(String docName, String docRegNum, String date, String startTime, String endTime, String location, String specialization){
		boolean isSuccess = false;

		String url = "jdbc:mysql://localhost:3306/echannelling";
		String user = "root";
		String pass = "2023";

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, pass);
			Statement statement = con.createStatement();

			String sql = "insert into shedule values (0,'"+ docName +"', '"+ docRegNum +"', '"+ date +"', '"+ startTime +"', '"+ endTime +"', '"+ location +"', '"+ specialization +"')";
			
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
