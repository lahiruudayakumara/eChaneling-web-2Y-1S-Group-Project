package com.member;

public class DirectMember extends RegisteredMember {
	
	private String userName;
	
	public DirectMember(String name, String NIC, String phone, String email, String userName) {
		super(name, NIC, phone, email);
		this.userName = userName;
	}
	
	public String getUserName() {
		return userName;
	}

	@Override
	public void setAppointment() {
	}
	
	
}
