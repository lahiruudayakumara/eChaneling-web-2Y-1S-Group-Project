package com.member;

public abstract class RegisteredMember {
	
	protected String name;
	protected String NIC;
	protected String phone;
	protected String email;
	protected String area;
	
	public RegisteredMember(String name, String NIC, String phone, String email, String area) {
		this.name = name;
		this.NIC = NIC;
		this.phone = phone;
		this.email = email;
		this.area = area;
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
	public String getArea() {
		return area;
	}

	abstract public void bookAppointment();
	
	public void viewAppointments() {
		
	}
	
}

