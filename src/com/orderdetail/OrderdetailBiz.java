package com.orderdetail;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Orderdetail;
@Service("odbiz")
public class OrderdetailBiz implements Biz<String, Orderdetail> {
	
	@Resource(name="oddao")
	Dao dao;

	@Override
	public void register(Orderdetail v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Orderdetail v) throws Exception {
		dao.update(v);
	}

	@Override
	public Orderdetail get(String k) throws Exception {
		return (Orderdetail) dao.select(k);
	}

	@Override
	public ArrayList<Orderdetail> get() throws Exception {
		return dao.select();
	}

	@Override
	public ArrayList<Orderdetail> getsec(String k) throws Exception {
		return dao.selectsec(k);
	}
	
	
}
