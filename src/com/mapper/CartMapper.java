package com.mapper;

import java.util.ArrayList;

import com.vo.Cart;

public interface CartMapper {
	public void insert(Cart obj);
	public void delete(String user_id);
	public void update(Cart obj);
	public Cart select(String obj);
	public ArrayList<Cart> selectsec(String user_id);
	public ArrayList<Cart> selectall();
}
