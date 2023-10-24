package com.admin;

//count data for display dashboard
public class Count {
	private final int performence;
	private int doctor;
	private final int regUser;
	private final int appointment;
	private final int pendingApprovel;
	
	public Count() {
		this.performence = 100;
		this.doctor = 0;
		this.regUser = 500;
		this.appointment = 52;
		this.pendingApprovel = 0;
	}

	public void setDoctor(int doctor) {
		this.doctor = doctor;
	}

	public int getPerformence() {
		return performence;
	}

	public int getDoctor() {
		return doctor;
	}

	public int getRegUser() {
		return regUser;
	}

	public int getAppointment() {
		return appointment;
	}

	public int getPendingApprovel() {
		return pendingApprovel;
	}
	
}
