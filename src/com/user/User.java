package com.user;

//User class (Abstraction, Encapsulation, Inheritance)
public class User implements IPerson{
	// User class represents a basic user entity
	protected String nic;
	protected String name;
	protected String address;
	protected String email;
	protected int tpno;
	
	// Constructor for creating a User object
	public User(String nic, String name, String address, String email, int tpno) {
		this.name = name;
		this.nic = nic;
		this.address = address;
		this.email = email;
		this.tpno = tpno;
	}

	 // Getters and setters for User attributes (Encapsulation)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTpno() {
		return tpno;
	}

	public void setTpno(int tpno) {
		this.tpno = tpno;
	}
	
	public void showName() {
		System.out.println("I am person");
		
	}
}
	
	
	

	

