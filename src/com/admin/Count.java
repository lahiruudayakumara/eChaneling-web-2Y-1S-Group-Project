package com.admin;

public class Count {
	private int performence;
	private int doctor;
	private int regUser;
	private int appointment;
	private int pendingApprovel;
	
	public Count() {
		this.performence = 100;
		this.doctor = 0;
		this.regUser = 0;
		this.appointment = 0;
		this.pendingApprovel = 0;
	}

	public void setPerformence(int performence) {
		this.performence = performence;
	}

	public void setDoctor(int doctor) {
		this.doctor = doctor;
	}

	public void setRegUser(int regUser) {
		this.regUser = regUser;
	}

	public void setAppointment(int appointment) {
		this.appointment = appointment;
	}

	public void setPendingApprovel(int pendingApprovel) {
		this.pendingApprovel = pendingApprovel;
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
