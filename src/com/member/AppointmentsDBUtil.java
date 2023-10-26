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
				sql_build += " docName LIKE '" + doctorName +"%' ";
				count = true;
			}
				
			
			if(specialization != null){			
				 
				if(count) {
					sql_build += " and specialization LIKE '" + specialization + "%' ";
				 }
				else{
					sql_build += " specialization LIKE '" + specialization + "%' ";
					count=true;
				}
			}
			
			
			if(hospitalName != null){
				
				if(count) {
					sql_build += " and hospitalName LIKE '" + hospitalName + "%' ";
				}
				else{
					sql_build += " hospitalName LIKE '" + hospitalName + "%' ";
					count=true;
				}
					
			}
			
			
			if(date != null)
			{
				if(count) {
					sql_build += " and date LIKE '" + date + "%'";
				}
				else {
					sql_build += " date LIKE '" + date + "%'";
					count=true;
				}
			}
			
			if(date != null)
			{
				if(count) {
					sql_build += " and availability = 'Available'";
				}
				else {
					sql_build += " and availability = 'Available'";
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
				String spec = rs.getString(4);
				String hosName = rs.getString(5);
				String dt = rs.getString(6);
				String time = rs.getString(7);
				int docCharge = rs.getInt(9);
				
				Appointments appointment = new Appointments(appID,docName,spec,hosName,dt,time,docCharge);
				app.add(appointment);
			}
			
		}
		// Handle any exceptions that may occur
		catch(Exception e) {
			e.printStackTrace();
		}
			
		return app;
	}
	
	/* public static boolean placeAppointment(int appointment_no, String pName,String pNic,String pAge,String pGender,String pEmail,String pPhone,
		 String pAddress,String pMedCon,String pAllergy,String pCurrMedi,String docName,String spec,String hosName,String date,String time,int fee,String userName)*/
	public static boolean placeAppointment(int appointment_no, String userName, String doctor, String specialization, String hospital, String Sdate, String time, String pName,String pNic,String pGender,int pAge, String pEmail,String pPhone,String pAddress){
		 
		 
		 boolean isSuccess = false;
		
		 try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "INSERT INTO appointments_details VALUES(0,'"+appointment_no+"','"+userName+"','"+doctor+"','"+specialization+"','"+hospital+"','"+Sdate+"','"+time+"','"+pName+"','"+pNic+"','"+pGender+"','"+pAge+"','"+pEmail+"','"+pPhone+"','"+pAddress+"')";
			 
			// String sql = "INSERT INTO appointment_details VALUES('"+appointment_no+"','"+pName+"','"+pNic+"','"+pAge+"','"+pGender+"','"+pEmail+"','"+pPhone+"','"+pAddress+"','"+pMedCon+"','"+pAllergy+"','"+pCurrMedi+"','"+docName+"','"+spec+"','"+hosName+"''"+date+"','"+time+"','"+fee+"','"+userName+"'";

			 int result = stmt.executeUpdate(sql);
			 
			 if(result>0) {
				 isSuccess=true;
			 }
			 else {
				 isSuccess=false;
			 }
			 
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		
		 return isSuccess;
		 
	 }
	 
	 public static boolean UpdateAvilability(int appointment_no) {
		 
		 boolean isSuccess = false;
		 
		 try {
			 
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "Update doctor_schedule SET availability = 'Unavailable' WHERE scheduleID = '"+appointment_no+"'";
			 
			 int result = stmt.executeUpdate(sql);
			 
			 if(result>0) {
				 isSuccess=true;
			 }
			 else {
				 isSuccess=false;
			 }
			 
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return isSuccess;
		 
	   }
	 
	 	public static boolean ResetAvilability(int appointment_no) {
		 
		 boolean isSuccess = false;
		 
		 try {
			 
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "Update doctor_schedule SET availability = 'Available' WHERE scheduleID = '"+appointment_no+"'";
			 
			 int result = stmt.executeUpdate(sql);
			 
			 if(result>0) {
				 isSuccess=true;
			 }
			 else {
				 isSuccess=false;
			 }
			 
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return isSuccess;
		 
	 }
	 	
	 	public static boolean DeleteAppointmentDetails(int appointment_no) {
	 		
	 		boolean isSuccess=false;
	 		
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "DELETE FROM appointments_details WHERE app_id='"+appointment_no+"'";
				
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					isSuccess=true;
				}
				else {
					isSuccess=false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}	
	 	
	 	public static boolean updateContactDetails(String id, String email, String phone, String address) {
			
			int convId = Integer.parseInt(id);
			boolean isSuccess=false;
			try {
				
				// Establish a database connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE appointments_details SET patient_email='"+email+"',patient_phone='"+phone+"',patient_address='"+address+"' WHERE ref_no='"+convId+"'";
				
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					isSuccess=true;
				}
				else {
					isSuccess=false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
	 	
	 	public static boolean deleteAppointment(int id) {
	 		
	 		boolean isSuccess = false;
	 		
try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "DELETE FROM appointments_details WHERE ref_no='"+id+"'";
				
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					isSuccess=true;
				}
				else {
					isSuccess=false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
	 		
	 		return isSuccess;
	 	}
	 	
	 	public static boolean createReund(int appId, int refId, String name,String nic,String username) {
	 		
	 		boolean isSuccess = false;
	 		
	 		try {
	 			
	 			con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "INSERT INTO to_refund VALUES(0,'"+appId+"','"+refId+"','"+name+"','"+nic+"','"+username+"')";
				
				int result = stmt.executeUpdate(sql);
				 
				 if(result>0) {
					 isSuccess=true;
				 }
				 else {
					 isSuccess=false;
				 }
				
				
	 		}catch(Exception e) {
	 			e.printStackTrace();
	 		}
	 		
	 		return isSuccess;
	 		
	 	}
	 	
	 	public static List<Refund> getRefundDetails(int id) {
	 		
	 		ArrayList<Refund> refund = new ArrayList<>();
	 		
	 		try {
	 			
	 			con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM to_refund WHERE refId='"+id+"'";
				
				// Execute the SQL query
				rs = stmt.executeQuery(sql);
				
				// If a matching appointment is found, create an Appointments object and add it to the list
				while(rs.next()) {
					int refundId = rs.getInt(1);
					int appId = rs.getInt(2);
					int refId = rs.getInt(3);
					String name = rs.getString(4);
					String nic = rs.getString(5);
					String username = rs.getString(6);
					
					Refund refundDatails = new Refund(refundId,appId,refId,name,nic,username);
					refund.add(refundDatails );
				}
				
				
	 		}catch(Exception e) {
	 			e.printStackTrace();
	 		}
	 		
	 		return refund;
	 	}
	 	
	 	public static boolean claimRefund(int refundId,int refId,int appId,String patName,String patNic,String refundReason,String bankName,String branchName,String accHolderName,String accNo) {
	 		
	 		boolean isSuccess = false;
	 		
	 		try {
	 			
	 			con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "INSERT INTO refund VALUES('"+refundId+"','"+refId+"','"+appId+"','"+patName+"','"+patNic+"','"+refundReason+"','"+bankName+"','"+branchName+"','"+accHolderName+"','"+accNo+"')";
				
				int result = stmt.executeUpdate(sql);
				 
				 if(result>0) {
					 isSuccess=true;
				 }
				 else {
					 isSuccess=false;
				 }
				
				
	 		}catch(Exception e) {
	 			e.printStackTrace();
	 		}
	 		
	 		return isSuccess;
	 		
	 	}

}

