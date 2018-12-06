package com.vo;

import java.util.Date;

public class Orders {
	int oid;
	Date o_date;
	String user_id;
	int amount;
	String pmt_option;
	String pmt_status;
	String deli_status;
	
	public Orders() {}

	public Orders(String user_id, int amount, String pmt_option, String pmt_status, String deli_status) {
		this.user_id = user_id;
		this.amount = amount;
		this.pmt_option = pmt_option;
		this.pmt_status = pmt_status;
		this.deli_status = deli_status;
	}
	

	public Orders(String user_id, int amount) {
		this.user_id = user_id;
		this.amount = amount;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getPmt_option() {
		return pmt_option;
	}

	public void setPmt_option(String pmt_option) {
		this.pmt_option = pmt_option;
	}

	public String getPmt_status() {
		return pmt_status;
	}

	public void setPmt_status(String pmt_status) {
		this.pmt_status = pmt_status;
	}

	public String getDeli_status() {
		return deli_status;
	}

	public void setDeli_status(String deli_status) {
		this.deli_status = deli_status;
	}

	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", o_date=" + o_date + ", user_id=" + user_id + ", amount=" + amount
				+ ", pmt_option=" + pmt_option + ", pmt_status=" + pmt_status + ", deli_status=" + deli_status + "]";
	}
	
	
}
