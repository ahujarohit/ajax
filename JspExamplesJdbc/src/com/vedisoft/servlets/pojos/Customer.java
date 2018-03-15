package com.vedisoft.servlets.pojos;

import java.util.Date;

public class Customer {
	private int coustomerId;
	private String coustomerName;
	private String email;
	private Date dob;

	public Customer() {
		super();
		this.coustomerName = new String();
		this.email = new String();
		this.dob = new Date();
	}

	public Customer(String coustomerName, String email, Date dob) {
		super();
		this.coustomerName = coustomerName;
		this.email = email;
		this.dob = dob;
	}

	public Customer(int coustomerId, String coustomerName, String email, Date dob) {
		super();
		this.coustomerId = coustomerId;
		this.coustomerName = coustomerName;
		this.email = email;
		this.dob = dob;
	}

	public int getCoustomerId() {
		return coustomerId;
	}

	public void setCoustomerId(int coustomerId) {
		this.coustomerId = coustomerId;
	}

	public String getCoustomerName() {
		return coustomerName;
	}

	public void setCoustomerName(String coustomerName) {
		this.coustomerName = coustomerName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "Customer [coustomerId=" + coustomerId + ", coustomerName=" + coustomerName + ", email=" + email + "]";
	}

}
