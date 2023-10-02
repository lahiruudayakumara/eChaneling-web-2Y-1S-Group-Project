package com.member;

public abstract class RegisteredMember {
	
	protected String name;
	protected String NIC;
	protected String phone;
	protected String email;
	
	public RegisteredMember(String name, String NIC, String phone, String email) {
		this.name = name;
		this.NIC = NIC;
		this.phone = phone;
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	public String getNIC() {
		return NIC;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	
	abstract public void setAppointment();
	
}

