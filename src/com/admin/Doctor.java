package com.admin;

//Doctor class is a specific Person implementation, which extends Person and sets its initial behaviors.
public class Doctor extends Person {
	
	private String specialization;
	private String work;
	
	public Doctor() {
		professional = new DoctorProfessional(); //Set the initial Professional behavior.
		this.specialization = "";
		this.work = "";
	}
	
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
	
	@Override
	public String displayInfo() {
		return "Email: " + email+ "</br>Tel : " +phoneNo+ "</br>" + "Specialization : " +specialization+ "</br>Work : " +work+ "";
	}
		
}
