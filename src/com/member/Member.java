package com.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Member extends RegisteredMember{

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private String subject;
	private String message;
	private int msgId;
	private  String username;
	
	public Member(String name, String email, String phone,String subject,String message, int msgId, String username) {
		super(name, email, phone);
		this.subject = subject;
		this.message = message;
		this.msgId = msgId;
		this.username = username;
	}
	
	public String getName() {
		return name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public String getMessage() {
		return message;
	}
	
	public int getMsgId () {
		return msgId;
	}
	
	public String getUsername() {
		return username;
	}

	public static List<Member> view(String userName) {
		
		
		ArrayList<Member> msg = new ArrayList<>();
		
		try {
			
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			// Construct the SQL query 
			String sql = "SELECT * FROM contact_us WHERE username = '"+userName+"'";
			
			// Execute the SQL query
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int msgId = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String sub = rs.getString(5);
				String mssg = rs.getString(6);
				String uname = rs.getString(7);
				
				Member member = new Member(name, email,phone,sub, mssg, msgId, uname);
				msg.add(member);
			}
		}
		// Handle any exceptions that may occur
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return msg;
	}
	
}
