package com.mapper;

import java.util.ArrayList;

import com.vo.Cart;

public interface CartMapper {
	public void insert(Cart obj);
	public void delete(Integer cid);
	public void update(Cart obj);
	public Cart select(Integer cid);
	public ArrayList<Cart> selectall();
}
