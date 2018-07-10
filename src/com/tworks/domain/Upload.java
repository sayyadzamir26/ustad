package com.tworks.domain;

public class Upload {
	String resource;
	public String getResource() {
		return resource;
	}

	public void setResource(String resource) {
		this.resource = resource;
	}

	public String getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Upload [resource=" + resource + ", delete_flag=" + delete_flag + ", id=" + id + "]";
	}

	String delete_flag;

	int id;
}
