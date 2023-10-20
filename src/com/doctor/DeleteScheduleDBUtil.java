package com.doctor;

import java.sql.Connection;
import java.sql.Statement;

public class DeleteScheduleDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement statement = null;
		
	public static boolean deleteSchedule(int id) {
				
		try {
				
			con = DBConnect.getConnection();
			statement = con.createStatement();
				
			String sql = "delete from shedule where sheduleIDu='"+ id +"'";
				
			int result = statement.executeUpdate(sql);
				
			if(result > 0) {
					isSuccess = true;
					
			}
			else {
					isSuccess = false;
			}
				
		}catch(Exception e) {
			System.out.println("unsuccess");
			e.printStackTrace();
		}
			
		return isSuccess;
			
	}
	
}
