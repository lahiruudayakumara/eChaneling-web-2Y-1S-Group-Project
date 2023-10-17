package com.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * The AppointmentDBUtil class provides utility methods for interacting with the database
 * to search for available medical appointments based on various criteria.
 */
public class AppointmentsDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/**
     * Searches for available medical appointments in the database based on the specified criteria.
     *
     * @param doctorName     The name of the doctor (or null if not specified).
     * @param specialization The doctor's specialization (or null if not specified).
     * @param hospitalName   The name of the hospital (or null if not specified).
     * @param date           The date of the appointment (or null if not specified).
     * @return A list of available appointments matching the given criteria.
     */
	public static List<Appointments> searchAppointment(String doctorName,String specialization,String hospitalName,String date){
	
		ArrayList<Appointments> app = new ArrayList<>();
		
		try {
			
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Start building sql query
			String sql_build = "SELECT * FROM doctor_schedule WHERE ";
			boolean count =	false;	
			
			if(doctorName != null)
			{
				sql_build += " docName LIKE '%" + doctorName +"%' ";
				count = true;
			}
				
			
			if(specialization != null){			
				 
				if(count) {
					sql_build += " and specialization LIKE '%" + specialization + "%' ";
				 }
				else{
					sql_build += " specialization LIKE '%" + specialization + "%' ";
					count=true;
				}
			}
			
			
			if(hospitalName != null){
				
				if(count) {
					sql_build += " and hospitalName LIKE '%" + hospitalName + "%' ";
				}
				else{
					sql_build += " hospitalName LIKE '%" + hospitalName + "%' ";
					count=true;
				}
					
			}
			
			
			if(date != null)
			{
				if(count) {
					sql_build += " and date LIKE '%" + date + "%'";
				}
				else {
					sql_build += " date LIKE '%" + date + "%'";
				}
			}
			
			
			// Construct the SQL query based on the specified criteria
			String sql = sql_build;
		          
			// Execute the SQL query
			rs = stmt.executeQuery(sql);
			
			// If a matching appointment is found, create an Appointments object and add it to the list
			while(rs.next()) {
				int appID = rs.getInt(1);
				String docName = rs.getString(2);
				String docRegNum = rs.getString(3);
				String spec = rs.getString(4);
				String hosName = rs.getString(5);
				String dt = rs.getString(6);
				String time = rs.getString(7);
				double docCharge = rs.getDouble(9);
				
				Appointments appointment = new Appointments(appID,docName,spec,docRegNum,hosName,dt,time,docCharge);
				app.add(appointment);
			}
			
		}
		// Handle any exceptions that may occur
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return app;
	}
}