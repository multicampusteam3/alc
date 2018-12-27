package com.mapper;

import java.util.ArrayList;

import com.vo.Expense;

public interface ExpenseMapper {
	public void insert(Expense obj);
	public void delete(String user_id);
	public void update(Expense obj);
	public Expense select(String obj);
	public ArrayList<Expense> selectsec(String user_id);
	public ArrayList<Expense> selectall();
}
