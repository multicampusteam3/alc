package com.order;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.OrdersMapper;
import com.vo.Orders;
@Repository("odao")
public class OrdersDao implements Dao<String, Orders> {
	@Autowired
	OrdersMapper om;

	@Override
	public void insert(Orders v) {
		om.insert(v);
	}

	@Override
	public void delete(String k) {
		om.delete(k);
	}

	@Override
	public void update(Orders v) {
		om.update(v);
	}

	@Override
	public Orders select(String k) {
		return om.select(k);
	}

	@Override
	public ArrayList<Orders> selectsec(String k) {
		return om.selectsec(k);
	}

	@Override
	public ArrayList<Orders> select() {
		return om.selectall();
	}
	
	
	
}
