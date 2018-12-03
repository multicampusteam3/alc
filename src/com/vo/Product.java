package com.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	String pid;
	int p_code;
	int unit_price;
	Date regdate;
	int inventory;
	String p_imgname;
	MultipartFile mf;
	
	public Product() {}

	public Product(String pid, int p_code, int unit_price, int inventory, String p_imgname, MultipartFile mf) {
		this.pid = pid;
		this.p_code = p_code;
		this.unit_price = unit_price;
		this.inventory = inventory;
		this.p_imgname = p_imgname;
		this.mf = mf;
	}

	public Product(String pid, int p_code, int unit_price, Date regdate, int inventory, String p_imgname,
			MultipartFile mf) {
		this.pid = pid;
		this.p_code = p_code;
		this.unit_price = unit_price;
		this.regdate = regdate;
		this.inventory = inventory;
		this.p_imgname = p_imgname;
		this.mf = mf;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public int getP_code() {
		return p_code;
	}

	public void setP_code(int p_code) {
		this.p_code = p_code;
	}

	public int getUnit_price() {
		return unit_price;
	}

	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}
	
	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public String getP_imgname() {
		return p_imgname;
	}

	public void setP_imgname(String p_imgname) {
		this.p_imgname = p_imgname;
	}

	public MultipartFile getMf() {
		return mf;
	}

	public void setMf(MultipartFile mf) {
		this.mf = mf;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", p_code=" + p_code + ", unit_price=" + unit_price + ", regdate=" + regdate
				+ ", inventory=" + inventory + ", p_imgname=" + p_imgname + ", mf=" + mf + "]";
	}
	
	
	
}
