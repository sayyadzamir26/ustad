package com.tworks.domain;

import java.util.Date;

public class Roomies {
	private String title = "",	delete_flag = "";

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}
	String roomDetails="",created_by="";
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	int id;
	public String getRoomDetails() {
		return roomDetails;
	}
	public void setRoomDetails(String roomDetails) {
		this.roomDetails = roomDetails;
	}
	public int getId() {
		return id;
	}
	public Date getCreated_on() {
		return created_on;
	}
	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}
	public Date getModified_on() {
		return modified_on;
	}
	public void setModified_on(Date modified_on) {
		this.modified_on = modified_on;
	}
	public void setId(int id) {
		this.id = id;
	}
	private Date created_on,modified_on;
	

}
