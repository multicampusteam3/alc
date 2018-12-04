package com.cart;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.CartMapper;
import com.vo.Cart;
@Repository("cdao")
public class CartDao implements Dao<Integer, Cart> {
	
	@Autowired
	CartMapper cm;
	
	@Override
	public void insert(Cart v) {
		cm.insert(v);
	}

	@Override
	public void delete(Integer k) {
		cm.delete(k);
	}

	@Override
	public void update(Cart v) {
		cm.update(v);
	}

	@Override
	public Cart select(Integer k) {
		return cm.select(k);
	}

	@Override
	public ArrayList<Cart> select() {
		return cm.selectall();
	}

	@Override
	public ArrayList<Cart> selectsec(Integer k) {
		// TODO Auto-generated method stub
		return null;
	}

}
