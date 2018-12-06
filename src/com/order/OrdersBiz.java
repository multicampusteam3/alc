package com.order;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Orders;

@Service("obiz")
public class OrdersBiz implements Biz<String, Orders> {
	@Resource(name="odao")
	Dao dao;

	@Override
	public void register(Orders v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Orders v) throws Exception {
		dao.update(v);
	}

	@Override
	public Orders get(String k) throws Exception {
		return (Orders) dao.select(k);
	}

	@Override
	public ArrayList<Orders> get() throws Exception {
		return dao.select();
	}

	@Override
	public ArrayList<Orders> getsec(String k) throws Exception {
		return dao.selectsec(k);
	}
	
	
}
