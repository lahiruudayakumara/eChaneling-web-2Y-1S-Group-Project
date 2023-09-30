package com.doctor;

public class Doctor {
	protected String name; 
	protected String email;
	protected String phoneNum;
	
	public Doctor(String name, String email, String phoneNum) {
		this.name = name;
		this.email = email;
		this.phoneNum = phoneNum;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPhoneNum() {
		return phoneNum;
	}

}
