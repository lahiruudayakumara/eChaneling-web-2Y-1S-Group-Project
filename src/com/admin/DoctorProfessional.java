package com.admin;

//DoctorProfessional implements Professional for doctor name.
public class DoctorProfessional implements Professional {
	public String displayName(String fullName) {
		return "Dr. " + fullName;
	}
}
