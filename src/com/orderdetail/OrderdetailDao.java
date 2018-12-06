package com.orderdetail;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.OrderdetailMapper;
import com.vo.Orderdetail;

@Repository("oddao")
public class OrderdetailDao implements Dao<String, Orderdetail> {
	
	@Autowired
	OrderdetailMapper odm;

	@Override
	public void insert(Orderdetail v) {
		odm.insert(v);
	}

	@Override
	public void delete(String k) {
		odm.delete(k);
	}

	@Override
	public void update(Orderdetail v) {
		odm.update(v);
	}

	@Override
	public Orderdetail select(String k) {
		return odm.select(k);
	}

	@Override
	public ArrayList<Orderdetail> selectsec(String k) {
		return odm.selectsec(k);
	}

	@Override
	public ArrayList<Orderdetail> select() {
		return odm.selectall();
	}
	
	
}
