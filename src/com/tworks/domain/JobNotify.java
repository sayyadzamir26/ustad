package com.tworks.domain;

import java.sql.Timestamp;
import java.util.Date;    

public class JobNotify {

	private int id;


	@Override
	public String toString() {
		return "JobNotify [id=" + id + ", title="
				+ title + ", description=" + description + ", created_on="
				+ created_on + ", modified_on=" + modified_on + ", created_by="
				+ created_by + ", delete_flag=" + delete_flag + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	private String title = "";
	private String description = "";
	//private String city_name = "";
	//private String state_name = "";
	private Date created_on,modified_on;
	private String created_by = "", delete_flag = "";

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

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}

}
