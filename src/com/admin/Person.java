package com.admin;

class Person {
	
	protected int id;
	protected String fullName;
	protected String email;
	protected String phoneNo;
	protected String password;
	
	public Person(int id, String fullName, String email, String phoneNo, String password) {
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getFullName() {
		return fullName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}
	
	public String displayInfo() {
		return "Name : "+ fullName + "</br>Email: " + email+ "</br>Tel : " +phoneNo+ "</br>";
	}
	
}
