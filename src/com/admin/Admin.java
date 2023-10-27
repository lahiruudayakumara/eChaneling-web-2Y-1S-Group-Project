package com.admin;

//Admin class is a specific Person implementation, which extends Person and sets its initial behaviors.
public class Admin extends Person {
	
	private String userName;
	private String userRole;
	
	public Admin() {
		this.userName = "";
		this.userRole = "";
		professional = new AdminProfessional(); //Set the initial Professional behavior.
	}

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
	
	//Display admin information (admin_dashboard.jsp)
	@Override
	public String displayInfo() {
		return "Name : "+ fullName +"<br>" + "User Name : " + userName+ "<br>Email: " + email+ "<br>Your Role : "+ userRole + "</br>Tel : " +phoneNo+ "</br>";
	}	

}
