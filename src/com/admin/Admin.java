package com.admin;

public class Admin {
	private int id;
	private String name;
	private String email;;
	private String userName;
	private String password;
	
	public Admin(int id, String name, String email, String userName, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
}
