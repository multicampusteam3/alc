package com.cart;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Cart;

@Service("cbiz")
public class CartBiz implements Biz<String, Cart> {
	@Resource(name="cdao")
	Dao<String,Cart> dao;
	
	@Override
	public void register(Cart v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Cart v) throws Exception {
		dao.update(v);
	}

	@Override
	public Cart get(String k) throws Exception {
		return (Cart) dao.select(k);
	}

	@Override
	public ArrayList<Cart> get() throws Exception {
		return dao.select();
	}

	@Override
	public ArrayList<Cart> getsec(String k) throws Exception {
		return dao.selectsec(k);
	}

}
