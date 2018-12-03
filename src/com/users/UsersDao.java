package com.users;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.UsersMapper;
import com.vo.Users;

@Repository("udao")
public class UsersDao implements Dao<String, Users> {
	
	@Autowired
	UsersMapper um;
	
	@Override
	public void insert(Users v) {
		um.insert(v);
	}

	@Override
	public void delete(String k) {
		um.delete(k);
	}

	@Override
	public void update(Users v) {
		um.update(v);
	}

	@Override
	public Users select(String k) {
		return um.select(k);
	}

	@Override
	public ArrayList<Users> select() {
		return um.selectall();
	}

}
