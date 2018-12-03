package com.mapper;

import java.util.ArrayList;

import com.vo.Users;

public interface UsersMapper {
	public void insert(Users obj);
	public void delete(String user_id);
	public void update(Users obj);
	public Users select(String user_id);
	public ArrayList<Users> selectall();
}
