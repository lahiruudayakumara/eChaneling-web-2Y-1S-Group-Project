package com.admin;

//AdminProfessional implements Professional for admin dashboard welcome message.
public class AdminProfessional implements Professional {
	public String displayName(String Name) {
		return "Hello, " + Name + ".";
	}
}
