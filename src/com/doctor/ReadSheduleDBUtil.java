package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReadSheduleDBUtil {
	private static Connection con = null;
	private static Statement statement = null;
	private static ResultSet result;
	
	public static List<Schedule> getSchedule(){
		ArrayList<Schedule> Schedule = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			statement = con.createStatement();
			
			String sql = " select * from shedule ";
			result = statement.executeQuery(sql);
			
			while(result.next()) {
				int sId = result.getInt(1);
				String docName = result.getString(2);
				String docRegNum = result.getString(3);
				String date = result.getString(4);;
				String startTime = result.getString(5);
				String endTime = result.getString(6);
				String location = result.getString(7);
				String specialization = result.getString(8);
				
				Schedule schedule = new Schedule(sId, docName, docRegNum, date, startTime, endTime, location, specialization);
				
				Schedule.add(schedule);
			}
		}
		catch(Exception e) {
			System.out.println("unsuccess !!!");
			e.printStackTrace();
		}
		
		return Schedule;
		
	}
}
