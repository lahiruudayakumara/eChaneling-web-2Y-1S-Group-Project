package com.doctor;

public class Appoinment {
	private int refNo;
	private String patient_name;
	private String patient_gender;
	private int patient_age;
	private String patient_phone;
	private String date;
	private String time;
	
	public Appoinment(int refNo, String patient_name, String patient_gender, int patient_age, String patient_phone, String date,
			String time) {
		this.refNo = refNo;
		this.patient_name = patient_name;
		this.patient_gender = patient_gender;
		this.patient_age = patient_age;
		this.patient_phone = patient_phone;
		this.date = date;
		this.time = time;
	}

	public String getPatient_name() {
		return patient_name;
	}

	public String getPatient_gender() {
		return patient_gender;
	}

	public int getPatient_age() {
		return patient_age;
	}

	public String getPatient_phone() {
		return patient_phone;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public int getRefNo() {
		return refNo;
	}
	
}
