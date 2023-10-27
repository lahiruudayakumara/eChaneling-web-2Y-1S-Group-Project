package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

	public class FeeDBUtil implements ISearchDBUtil{
		private Connection con = null;
		private Statement statement = null;
		private ResultSet result;
		
	@Override
	public List<Schedule> getSchedule(String value, String doctorRegNum) {
		ArrayList<Schedule> Schedule = new ArrayList<>();
		
		int docFee = Integer.parseInt(value);
			
		try {
				
			con = DBConnect.getConnection();
			statement = con.createStatement();
				
			String sql = " select * from shedule where docCharge = '"+ docFee +"' and docRegNum='"+ doctorRegNum +"'";
			result = statement.executeQuery(sql);
				
			while(result.next()) {
				int sId = result.getInt(1);
				String docName = result.getString(2);
				String docRegNum = result.getString(3);
				String date = result.getString(4);
				String startTime = result.getString(5);
				String endTime = result.getString(6);
				String location = result.getString(7);
				String specialization = result.getString(8);
				int docCharge = result.getInt(9);
				String availability = result.getString(10);
					
				Schedule schedule = new Schedule(sId, docName, docRegNum, date, startTime, 
						endTime, location, specialization, docCharge, availability);
					
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

