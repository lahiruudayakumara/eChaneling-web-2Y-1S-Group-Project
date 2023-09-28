package com.user;

import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class RegisteruserDBUtil {
	
	private static boolean isSucess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate (String userName, String password) {
	
	//Validate
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM admin WHERE userName = '" + userName + "' AND password = '" + password + "'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
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
		
		public static List<User> getAdmin(String userName){
			
			ArrayList<User> regUser = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM user WHERE name = '" + userName + "'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {

					String nic = rs.getString(2);
					String name = rs.getString(1);
					String email = rs.getString(3);
					String tpno = rs.getString(4);
					String address = rs.getString(5);
					String password = rs.getString(6);
					String username = rs.getString(7);
					
					int conTpno = Integer.parseInt(tpno);
					
					
					User r = new Register_user(name,nic,address,email, conTpno,password,username);
					regUser.add(r);
				}
			}
			catch(Exception e) {
				
			}
			return regUser;
		}
	}
