package com.member;

/**
 * The Appointments class represents a scheduled medical appointment.
 * It stores information about the appointment, including the appointment ID,
 * doctor's name, doctor's registration number, specialization, hospital name,
 * date, and time.
 */
public class Appointments{
	
	// Private member variables to store appointment details.
	private int appointmentID;
	private String doctorName;
	private String specialization;
	private String hospitalName;
	private String date;
	private String time;
	private int doctorCharge;

	//Constructs an Appointments object with the specified appointment details.
	public Appointments(int appointmentID, String doctorName,String specialization, String hospitalName, String date, String time, int doctorCharge) {
		this.appointmentID = appointmentID;
		this.doctorName = doctorName;
		this.specialization = specialization;
		this.hospitalName = hospitalName;
		this.date = date;
		this.time = time;
		this.doctorCharge = doctorCharge;
	}
	
	//Retrieves the unique identifier of the appointment.
	public int getAppointmentID() {
		return appointmentID;
	}
	
	//Retrieves the name of the doctor associated with the appointment.
	public String getDoctorName() {
		return doctorName;
	}

	//Retrieves the specialization of the doctor associated with the appointment.
	public String getSpecialization() {
		return specialization;
	}

	//Retrieves the name of the hospital where the appointment is scheduled.
	public String getHospitalName() {
		return hospitalName;
	}

	//Retrieves the date of the appointment.
	public String getDate() {
		return date;
	}

	//Retrieves the time of the appointment.
	public String getTime() {
		return time;
	}
	
	//Retrieves the doctors's charge of the appointment.
		public int getDoctorCharge() {
			return doctorCharge;
		}
}
