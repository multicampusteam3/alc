package com.vo;

import java.util.Date;

public class Expense {
	String regdate;
	String regtime;
	int pmtamount;
	String pmtdetail;
	String pmtoption;
	String types;
	Double lat;
	Double lng;
	
	
	public Expense() {
		super();
	}


	public Expense(int pmtamount, String pmtdetail, String pmtoption, String types, Double lat, Double lng) {
		super();
		this.pmtamount = pmtamount;
		this.pmtdetail = pmtdetail;
		this.pmtoption = pmtoption;
		this.types = types;
		this.lat = lat;
		this.lng = lng;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	public String getRegtime() {
		return regtime;
	}


	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}


	public int getPmtamount() {
		return pmtamount;
	}


	public void setPmtamount(int pmtamount) {
		this.pmtamount = pmtamount;
	}


	public String getPmtdetail() {
		return pmtdetail;
	}


	public void setPmtdetail(String pmtdetail) {
		this.pmtdetail = pmtdetail;
	}


	public String getPmtoption() {
		return pmtoption;
	}


	public void setPmtoption(String pmtoption) {
		this.pmtoption = pmtoption;
	}


	public String getTypes() {
		return types;
	}


	public void setTypes(String types) {
		this.types = types;
	}


	public Double getLat() {
		return lat;
	}


	public void setLat(Double lat) {
		this.lat = lat;
	}


	public Double getLng() {
		return lng;
	}


	public void setLng(Double lng) {
		this.lng = lng;
	}


	@Override
	public String toString() {
		return "Expense [regdate=" + regdate + ", regtime=" + regtime + ", pmtamount=" + pmtamount + ", pmtdetail="
				+ pmtdetail + ", pmtoption=" + pmtoption + ", types=" + types + ", lat=" + lat + ", lng=" + lng + "]";
	}
	
	
	
	

	
	
	
	
	
}
