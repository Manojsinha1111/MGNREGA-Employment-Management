package com.mgnrega.bean;

import java.io.Serializable;

public class GpBean implements Serializable{
	
	private String id;
	private String name;
	private String gender;
	private String marital_status;
	private int salary;
	private String join_date;
	private String password;
	private String bid;
	public GpBean() {
		super();
	}

	public GpBean(String id, String name, String gender, String marital_status, int salary, String join_date,
			String password, String bid) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.marital_status = marital_status;
		this.salary = salary;
		this.join_date = join_date;
		this.password = password;
		this.bid = bid;
		
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}
	
	

}
