package com.vedisoft.bean;

public class Employee {

	private int code;
	private String name;
	private String dept;
	private String desig;
	private String doj;
	private double basic;

	public Employee() {
	}

	public Employee(int code, String name, String dept, String desig, String doj, double basic) {
		this.code = code;
		this.name = name;
		this.dept = dept;
		this.desig = desig;
		this.doj = doj;
		this.basic = basic;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public double getBasic() {
		return basic;
	}

	public void setBasic(double basic) {
		this.basic = basic;
	}

	public String getDesig() {
		return desig;
	}

	public void setDesig(String desig) {
		this.desig = desig;
	}

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public double getHra() {
		double hra = 0.0f;
		hra = 0.2 * basic;
		return hra;
	}

	public double getDa() {
		double da = 0.0;
		da = 0.1 * basic;
		return da;
	}

	public double getCa() {
		double ca = 0.0;
		ca = 0.1 * basic;
		return ca;
	}

	public double getNSalary() {
		return getHra() + getCa() + getDa() + basic;
	}
	
}







