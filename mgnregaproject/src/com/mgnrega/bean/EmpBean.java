package com.mgnrega.bean;

import java.io.Serializable;

public class EmpBean implements Serializable{
	private String id;
	private String name;
	private String join_date;
	private int salary;
	private String gender;
	private String marital_status;
	private int days_worked;
	private String gid;
	private String pid;
	public EmpBean() {
		super();
	}
	public EmpBean(String id, String name, String join_date, int salary, String gender, String marital_status,
			int days_worked,String gid,String pid) {
		super();
		this.id = id;
		this.name = name;
		this.join_date = join_date;
		this.salary = salary;
		this.gender = gender;
		this.marital_status = marital_status;
		this.days_worked = days_worked;
		this.gid=gid;
		this.pid=pid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
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
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
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
	public int getDays_worked() {
		return days_worked;
	}
	public void setDays_worked(int days_worked) {
		this.days_worked = days_worked;
	}
	

}
