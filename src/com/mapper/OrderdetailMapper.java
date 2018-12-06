package com.mapper;

import java.util.ArrayList;

import com.vo.Orderdetail;

public interface OrderdetailMapper {
	public void insert(Orderdetail obj);
	public void delete(String oid);
	public void update(Orderdetail obj);
	public Orderdetail select(String obj);
	public ArrayList<Orderdetail> selectsec(String oid);
	public ArrayList<Orderdetail> selectall();
}
