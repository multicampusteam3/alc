package com.vo;

import java.util.Date;

public class Cart {
	String user_id;
	int pid;
	String pname;
	int qt;
	int price;
	int cid;
	Date c_date;
	
	public Cart() {}
	
	public Cart(String user_id, int pid, String pname, int qt, int price) {
		this.user_id = user_id;
		this.pid = pid;
		this.pname = pname;
		this.qt = qt;
		this.price = price;
	}

	public Cart(int cid, String user_id, int pid, int qt, int price, Date c_date) {
		this.cid = cid;
		this.user_id = user_id;
		this.pid = pid;
		this.qt = qt;
		this.price = price;
		this.c_date = c_date;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getQt() {
		return qt;
	}

	public void setQt(int qt) {
		this.qt = qt;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getC_date() {
		return c_date;
	}

	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}

	@Override
	public String toString() {
		return "Cart [user_id=" + user_id + ", pid=" + pid + ", pname=" + pname + ", qt=" + qt + ", price=" + price
				+ ", cid=" + cid + ", c_date=" + c_date + "]";
	}

	
	
}
