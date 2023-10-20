package com.doctor;

import java.sql.Connection;
import java.sql.Statement;

public class UpdateScheduleDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement statement = null;
	
	public static boolean updateSchedule(String id,String docName, String docRegNum, String date, String startTime, 
			String endTime, String location, String specialization, int docCharge, String availability) {
			
		try {
			
			con = DBConnect.getConnection();
			statement = con.createStatement();
			
			String sql = "update shedule set docName='"+ docName +"', docRegNum='"+ docRegNum +"', date='"+ date +"', startTime='"+ startTime +"',"
					+ " endTime='"+ endTime +"', location='"+ location +"', specialization='"+ specialization + 
					"', docCharge='"+ docCharge +"', availability='"+ availability +"' where sheduleID ='"+ id +"' ";
			
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
