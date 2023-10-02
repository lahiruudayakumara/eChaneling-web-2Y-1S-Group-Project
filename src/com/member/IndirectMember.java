package com.member;

public class IndirectMember extends RegisteredMember{

	private int age;
	private String area;
	public IndirectMember(String name, String NIC, String phone, String email, int age, String area) {
		super(name, NIC, phone, email);
		this.age = age;
		this.area = area;
	}
	
	public int getAge() {
		return age;
	}
	public String getArea() {
		return area;
	}
	
	@Override
	public void setAppointment() {	
	}

}
