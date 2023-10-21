package com.member;

public class DirectMember extends RegisteredMember {
	
	private int memberID;
	public DirectMember(String name, String NIC, String phone, String email, String area, int memberID) {
		super(name, NIC, phone, email, area);
		this.memberID = memberID;
	}
	
	public int getMemberID() {
		return memberID;
	}

	@Override
	public void bookAppointment() {
	}
	
	
}
