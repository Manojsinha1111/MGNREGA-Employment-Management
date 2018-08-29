package com.mgnrega.bean;

import java.io.Serializable;

public class BdoBean implements Serializable{
	
	private String id;
	private String name;
	private String gender;
	private String city;
	private String marital_status;
	private int salary;
	private String join_date;
	private String Edu_Qual;
	private String password;
	public BdoBean() {
		super();
	}
	public BdoBean(String id, String name, String gender, String city, String marital_status, int salary,
			String join_date, String edu_Qual, String password) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.city = city;
		this.marital_status = marital_status;
		this.salary = salary;
		this.join_date = join_date;
		Edu_Qual = edu_Qual;
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMarital_status() {
		return marital_status;
	}
	public void setMarital_status(String marital_status) {
		this.marital_status = marital_status;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getEdu_Qual() {
		return Edu_Qual;
	}
	public void setEdu_Qual(String edu_Qual) {
		Edu_Qual = edu_Qual;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
