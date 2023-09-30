package com.doctor;

public class Doctor {
	protected String name; 
	protected String gmail;
	
	public Doctor(String name, String gmail) {
		this.name = name;
		this.gmail = gmail;
	}

	public String getName() {
		return name;
	}

	public String getGmail() {
		return gmail;
	}
}
