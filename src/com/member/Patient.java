package com.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Patient extends RegisteredMember{
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private int referenceID;
	private int appointmentID;
	private String userName;
	private String doctorName;
	private String specialization;
	private String hospitalName;
	private String date;
	private String time;
	private String nic;
	private String gender;
	private int age;
	private String address;
	
	
	public Patient(String name,String email,String phone,int referenceID,int appointmentID,String userName,String doctorName,String specialization,String hospitalName,String date,String time,String nic,String gender,int age,String address) {
		super(name, email, phone);
		this.referenceID = referenceID;
		this.appointmentID = appointmentID;
		this.userName = userName;
		this. doctorName =  doctorName;
		this.specialization = specialization;
		this.hospitalName = hospitalName;
		this.date = date;
		this.time = time;
		this.nic = nic;
		this.gender=gender;
		this.age = age;
		this.address=address;
	}
	
	public String geteName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	public int getReferenceID() {
		return referenceID;
	}
	
	public int getAppointmentID() {
		return appointmentID;
	}

	public String getUserName() {
		return userName;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public String getSpecialization() {
		return specialization;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	
	public String getNic() {
		return nic;
	}

	public String getGender() {
		return gender;
	}

	public int getAge() {
		return age;
	}

	public String getAddress() {
		return address;
	}

	
	
	public static List<Patient> view(String userName){
		
		ArrayList<Patient> appData = new ArrayList<>();
		
		try {
			
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			// Construct the SQL query 
			String sql = "SELECT * FROM appointments_details WHERE username = '"+userName+"'";
			
			// Execute the SQL query
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int refId = rs.getInt(1);
				int appId = rs.getInt(2);
				String uName = rs.getString(3);
				String docName = rs.getString(4);
				String docSpec = rs.getString(5);
				String hosName = rs.getString(6);
				String date = rs.getString(7);
				String time = rs.getString(8);
				String patName = rs.getString(9);
				String patNic = rs.getString(10);
				String patGender = rs.getString(11);
				int patAge = rs.getInt(12);
				String patEmail =rs.getString(13);
				String patPhone = rs.getString(14);
				String patAddress = rs.getString(15);
				
				Patient pat = new Patient(patName, patEmail, patPhone,refId, appId, uName, docName, docSpec, hosName, date, time, patNic, patGender, patAge, patAddress);
				appData.add(pat);
			}
		}
		// Handle any exceptions that may occur
		catch(Exception e) {
			e.printStackTrace();
		}
		return appData;
	}


}
