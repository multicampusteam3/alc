package com.expense;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Expense;

@Service("ebiz")
public class ExpenseBiz implements Biz<String, Expense> {
	@Resource(name = "edao")
	Dao dao;
	
	@Override
	public void register(Expense v) throws Exception {
		dao.insert(v);
		
	}

	@Override
	public void remove(String k) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(Expense v) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Expense get(String k) throws Exception {
		return (Expense) dao.select(k);
	}

	@Override
	public ArrayList<Expense> get() throws Exception {
		return dao.select();
	}

	@Override
	public ArrayList<Expense> getsec(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
