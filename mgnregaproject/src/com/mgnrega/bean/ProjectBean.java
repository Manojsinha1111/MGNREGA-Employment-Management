package com.mgnrega.bean;

import java.io.Serializable;

public class ProjectBean implements Serializable{
	private String id;
	private String name;
	private String start_date;
	private String end_date;
	private int duration;
	private String purpose;
	private int budget;
	private String status;
	private String bid;
	private String gid;
	public ProjectBean() {
		super();
	}
	



	public ProjectBean(String id, String name, String start_date, String end_date, int duration, String purpose,
			int budget, String status, String bid, String gid) {
		super();
		this.id = id;
		this.name = name;
		this.start_date = start_date;
		this.end_date = end_date;
		this.duration = duration;
		this.purpose = purpose;
		this.budget = budget;
		this.status = status;
		this.bid = bid;
		this.gid = gid;
	}




	public String getGid() {
		return gid;
	}




	public void setGid(String gid) {
		this.gid = gid;
	}




	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
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
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
