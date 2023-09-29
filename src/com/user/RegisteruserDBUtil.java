package com.user;

import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class RegisteruserDBUtil {
	
	private static final String userNic = null;
	private static boolean isSucess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
	
	//Validate
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM user WHERE username = '" + username + "' AND password = '" + password + "'";
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
		
		public static List<User> getUser(String userName){
			
			ArrayList<User> regUser = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM user WHERE name = '" + userName + "'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {

					String nic = rs.getString(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String tpno = rs.getString(4);
					String address = rs.getString(5);
					String password = rs.getString(6);
					String username = rs.getString(7);
					
					int conTpno = Integer.parseInt(tpno);
					
					
					User r = new Register_user(nic,name,address,email, conTpno,password,username);
					regUser.add(r);
				}
			}
			catch(Exception e) {
				
			}
			return regUser;
		}
		
		public static boolean addUserInfo(String userNic,String Name,String userAddress,String userEmail,int userTp,String userPassword,String userName ) {		
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "INSERT INTO user (nic, name, email, phone_no, address, password, userName) " +
			             "VALUES ('"+userNic+"', '"+Name+"', '"+userEmail+"', '"+userTp+"',  '"+userAddress+"', '"+userPassword+"', '"+userName+"')";
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
 		
		public static boolean updateRegUse(String userNic,String Name,String userEmail,String userAddress,int userTp, String userName ) {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update into user( '"+userNic+"','"+Name+"','"+userEmail+"','"+userAddress+"','"+userTp+"','"+userName+"')";
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
		public static List<User> getUserDetails(String userNic){
			
			ArrayList<User> regUser = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM user WHERE username = '" +userNic+ "'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String nic = rs.getString(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String tpno = rs.getString(4);
					String address = rs.getString(5);
					String password = rs.getString(6);
					String username = rs.getString(7);
					
					
					int conTpno = Integer.parseInt(tpno);
					
					
					User r = new Register_user(nic,name,address,email, conTpno,password,username);
					regUser.add(r);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return regUser;
			
		}
		public static boolean deleteUser(String userNic) {
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from user where username='"+userNic+"'";
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
		
		public static boolean updateUser(String name, String email,String address,int tpno,String nic ) {
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "UPDATE user SET name = '"+name+"', email = '"+email+"',phone_no = '"+tpno+"',address = '"+address+"' where nic='"+nic+"'";


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
		
		public static boolean updatePassword(String password,String userName) {
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "UPDATE user SET password = '"+password+"' where username='"+userName+"'";


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
}

