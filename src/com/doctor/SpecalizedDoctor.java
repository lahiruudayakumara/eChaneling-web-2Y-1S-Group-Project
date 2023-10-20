package com.doctor;
public class SpecalizedDoctor extends Doctor{
	private int userId;
	private String docPassword;
	private String specialization;
	
	public SpecalizedDoctor(String name, String email, String phoneNum, String work, int userId, String docPassword,
			String specialization) {
		super(name, email, phoneNum, work);
		this.userId = userId;
		this.docPassword = docPassword;
		this.specialization = specialization;
	}
	public int getUserId() {
		return userId;
	}
	public String getDocPassword() {
		return docPassword;
	}
	public String getSpecialization() {
		return specialization;
	}
}
