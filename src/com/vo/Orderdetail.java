package com.vo;

public class Orderdetail {
	int odid;
	int pid;
	String pname;
	int oid;
	int qt;
	int price;
	
	public Orderdetail() {}
	
	public Orderdetail(int odid, int pid, int oid, int qt, int price) {
		this.odid = odid;
		this.pid = pid;
		this.oid = oid;
		this.qt = qt;
		this.price = price;
	}
	

	public Orderdetail(int pid, int qt, int price) {
		this.pid = pid;
		this.qt = qt;
		this.price = price;
	}
	
	
	public Orderdetail(int pid, String pname, int qt, int price) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.qt = qt;
		this.price = price;
	}

	public Orderdetail(int pid, int oid, int qt, int price) {
		this.pid = pid;
		this.oid = oid;
		this.qt = qt;
		this.price = price;
	}

	public int getOdid() {
		return odid;
	}

	public void setOdid(int odid) {
		this.odid = odid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
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

	@Override
	public String toString() {
		return "Orderdetail [odid=" + odid + ", pid=" + pid + ", oid=" + oid + ", qt=" + qt + ", price=" + price + "]";
	}
	
	
	
	
}
