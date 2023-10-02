package com.user;

public class Register_user extends User {
	
	private String password;
	private String username;
	
	public Register_user(String nic, String name, String address, String email, int tpno, String password,String username) {
		super( nic, name, address, email, tpno);
		this.password = password;
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
	