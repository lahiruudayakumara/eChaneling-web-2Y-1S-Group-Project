package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class DoctorDBUtil {
	
	private static boolean isSucess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Add Doctor
	public static boolean addDoctor( String fName,String email, String mobile, String password, String spec, String work) {		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into doctor ( fullname, email, phoneNo, password, Specialist, work) VALUES ('"+fName+"', '"+email+"', '"+mobile+"', '"+password+"', '"+spec+"', '"+work+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSucess = true;
			} else {
				isSucess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucess;
		
	}
	
	//Update doctor details
	public static boolean updatedoctor(int id, String fname, String email, String mobile, String password, String spec, String work ) {
				
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update doctor set fullname='"+fname+"', email='"+email+"', phoneNo='"+mobile+"', password='"+password+"', Specialist='"+spec+"', work='"+work+"' where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs> 0) {
				isSucess = true;
			} else {
				isSucess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucess;
	}	
	
	//get Doctors Details
	public static List<Doctor> getDoctorDetails(){
		
		ArrayList<Doctor> doc = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String passU = rs.getString(5);
				String spec = rs.getString(6);
				String work = rs.getString(7);
				
				Doctor d = new Doctor(id, fName, email, mobile, passU, spec, work);
				
				doc.add(d);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return doc;
		
	}
	
	//Get doctor details
	public static List<Doctor> getDoctorInfo(int Id){
		
		ArrayList<Doctor> docInfo = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where id='"+Id+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String passU = rs.getString(5);
				String spec = rs.getString(6);
				String work = rs.getString(7);
				
				Person d = new Doctor(id, fName, email, mobile, passU, spec, work);
				d.setProfessional(new DoctorProfessional()); // Change the professional behavior at runtime.
				d.displayInfo(); // Perform the new professional behavior.
				d.showMsg();
				
				docInfo.add((Doctor) d);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return docInfo;
		
	}
	
	//Delete Doctor
	public static boolean deleteDoctor(int Id) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from doctor where id='"+Id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSucess = true;
			} else {
				isSucess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucess;
	}	
}
