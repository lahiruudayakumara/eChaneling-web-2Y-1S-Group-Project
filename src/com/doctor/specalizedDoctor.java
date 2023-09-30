package com.doctor;

public class specalizedDoctor extends Doctor{
	private int userId;
	private String docPassword;
	private String specialization;
	private String work;
	
	public specalizedDoctor(String name, String email, String phoneNum, int userId, String docPassword,
			String specialization, String work) {
		super(name, email, phoneNum);
		this.userId = userId;
		this.docPassword = docPassword;
		this.specialization = specialization;
		this.work = work;
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

	public String getWork() {
		return work;
	}
}
