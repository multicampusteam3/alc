package com.mapper;

import java.util.ArrayList;

import com.vo.Orders;

public interface OrdersMapper {
	public void insert(Orders obj);
	public void delete(String user_id);
	public void update(Orders obj);
	public Orders select(String obj);
	public ArrayList<Orders> selectsec(String user_id);
	public ArrayList<Orders> selectall();
}
