package com.tworks.domain;

import java.util.Date;

public class User {

	private int id;
	private String userName;
	private String email;	
	private String password;
	private String gender;
	private String delete_flag="F";
	private String created_by="";
	private String job_flag="",room_flag="";
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public String getJob_flag() {
		return job_flag;
	}
	public void setJob_flag(String job_flag) {
		this.job_flag = job_flag;
	}
	public String getRoom_flag() {
		return room_flag;
	}
	public void setRoom_flag(String room_flag) {
		this.room_flag = room_flag;
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
	private Date created_on,modified_on;

	public String getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(String delete_flag) {
		this.delete_flag = "F";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", email=" + email
				+ ", password=" + password + ", gender=" + gender
				+ ", delete_flag=" + delete_flag + ", created_by=" + created_by
				+ ", job_flag=" + job_flag + ", room_flag=" + room_flag
				+ ", created_on=" + created_on + ", modified_on=" + modified_on
				+ ", getCreated_by()=" + getCreated_by() + ", getJob_flag()="
				+ getJob_flag() + ", getRoom_flag()=" + getRoom_flag()
				+ ", getCreated_on()=" + getCreated_on()
				+ ", getModified_on()=" + getModified_on()
				+ ", getDelete_flag()=" + getDelete_flag() + ", getId()="
				+ getId() + ", getUserName()=" + getUserName()
				+ ", getEmail()=" + getEmail() + ", getPassword()="
				+ getPassword() + ", getGender()=" + getGender()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
		
		
}

