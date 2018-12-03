package com.users;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Users;

@Service("ubiz")
public class UsersBiz implements Biz<String, Users> {
	@Resource(name="udao")
	Dao dao;
	
	@Override
	public void register(Users v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Users v) throws Exception {
		dao.update(v);
	}

	@Override
	public Users get(String k) throws Exception {
		return (Users) dao.select(k);
	}

	@Override
	public ArrayList<Users> get() throws Exception {
		return dao.select();
	}

}
