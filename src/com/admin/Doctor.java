package com.admin;

public class Doctor extends Person {
	
	private String specialization;
	private String work;
	
	public Doctor(int id, String fullName, String email, String phoneNo, String password, String specialization, String work) {
		super(id, fullName, email, phoneNo, password);
		this.specialization = specialization;
		this.work = work;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	public void setWork(String work) {
		this.work = work;
	}
	
	public String getSpecialization() {
		return specialization;
	}

	public String getWork() {
		return work;
	}	
	
}
