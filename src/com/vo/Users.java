package com.vo;

import java.util.Date;

public class Users {
	String user_id;
	String pw;
	String name;
	String address;
	Date user_regdate;
	
	public Users() {}

	
	
	public Users(String user_id, String pw, String name, String address) {
		this.user_id = user_id;
		this.pw = pw;
		this.name = name;
		this.address = address;
	}



	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(Date user_regdate) {
		this.user_regdate = user_regdate;
	}

	
	
	
}
