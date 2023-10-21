package com.member;

public abstract class RegisteredMember implements Viewable{
	
	protected String name;
	protected String phone;
	protected String email;
	
	public RegisteredMember(String name, String phone, String email) {
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
		
}

