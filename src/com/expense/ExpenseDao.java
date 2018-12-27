package com.expense;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.ExpenseMapper;
import com.vo.Expense;

@Repository("edao")
public class ExpenseDao implements Dao<String, Expense> {
	
	@Autowired
	ExpenseMapper em;
	@Override
	public void insert(Expense v) {
		em.insert(v);
	}

	@Override
	public void delete(String k) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Expense v) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Expense select(String k) {
		return em.select(k);
	}

	@Override
	public ArrayList<Expense> selectsec(String k) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Expense> select() {
		return em.selectall();
	}

}
