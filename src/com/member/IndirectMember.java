package com.member;

public class IndirectMember extends RegisteredMember{
	
	
	public IndirectMember(String name, String NIC, String phone, String email, String area) {
		super(name, NIC, phone, email, area);
	}
	
	@Override
	public void bookAppointment() {	
	}

}
