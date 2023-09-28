package com.admin;

public class Admin extends Person {
	
	private String userName;
	private String userRole;
	
	public Admin(int id, String fullName, String email, String phoneNo, String password, String userName, String userRole) {
		super(id, fullName, email, phoneNo, password);
		this.userName = userName;
		this.userRole = userRole;
	}

	public String getUserName() {
		return userName;
	}

	public String getUserRole() {
		return userRole;
	}
	
	

}
