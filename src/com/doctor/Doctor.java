package com.doctor;

public class Doctor {
	protected String name; 
	protected String email;
	protected String phoneNum;
	protected String work;
	
	public Doctor(String name, String email, String phoneNum, String work) {
		this.name = name;
		this.email = email;
		this.phoneNum = phoneNum;
		this.work = work;
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
	
	public String getWork() {
		return work;
	}
	
}
