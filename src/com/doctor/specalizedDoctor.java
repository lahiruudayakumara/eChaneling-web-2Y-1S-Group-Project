package com.doctor;

public class specalizedDoctor extends Doctor{
	private String userId;
	private String docPassword;
	
	public specalizedDoctor(String name, String gmail, String userId, String docPassword) {
		super(name, gmail);
		this.userId = userId;
		this.docPassword = docPassword;
	}

	public String getUserId() {
		return userId;
	}

	public String getDocPassword() {
		return docPassword;
	}
	
	public String getName() {
		return name;
	}

	public String getGmail() {
		return gmail;
	}
}
