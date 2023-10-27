package com.member;

public abstract class RegisteredMember implements Viewable{
	
	protected String name;
	protected String email;
	protected String phone;
	
	public RegisteredMember(String name, String email, String phone) {
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
		
}

