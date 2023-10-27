package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReadAppoinmentDBUtil {
	private static Connection con = null;
	private static Statement statement = null;
	private static ResultSet result;
	
	public static List<Appoinment> getAppoinment(){
		ArrayList<Appoinment> Appoinment = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			statement = con.createStatement();
			
			String sql = " select * from appointments_details";
			result = statement.executeQuery(sql);
			
			while(result.next()) {
				int refNo = result.getInt(1);
				String patient_name= result.getString(9);
				String patient_gender = result.getString(11);
				int patient_age = result.getInt(12);
				String patient_phone = result.getString(14);
				String date = result.getString(7);
				String time = result.getString(8);
				
				Appoinment appoinment = new Appoinment(refNo, patient_name, patient_gender, patient_age, patient_phone, date, time);
				
				Appoinment.add(appoinment);
			}
		}catch(Exception e) {
			System.out.println("unsuccess !!!");
			e.printStackTrace();
		}
		
		return Appoinment;
	}
	
	
	
}
