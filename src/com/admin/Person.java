package com.admin;

//Person is an abstract and parent class that defines the common behaviors and holds references to the strategy interfaces.
abstract class Person {
	
	Professional professional; //Reference to Professional
	
	protected int id;
	protected String fullName;
	protected String email;
	protected String phoneNo;
	protected String password;
	
	public Person() {
		this.id = 0;
		this.fullName = "";
		this.email = "";
		this.phoneNo = "";
		this.password = "";
	}
	
	public Person(int id, String fullName, String email, String phoneNo, String password) {
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
	}
	
	public String showMsg() {
		return professional.displayName(fullName); //Delegates professional to the current strategy.
	}
	
	public void  setProfessional(Professional professional) {
		this.professional = professional; // Set the proffessional strategy.
	}

	public int getId() {
		return id;
	}

	public String getFullName() {
		return fullName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}
	
	abstract public String displayInfo();
	
}
