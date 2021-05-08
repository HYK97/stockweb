package com.stock.web.user.mapper;

import com.stock.web.user.domain.UserDto;


public interface UserMapper {
	
	public void insert(UserDto user);
	public int deleteAll();
	public Integer login(UserDto user);
	public Integer idCheck(UserDto user);
	public UserDto userInfo(UserDto user);
	public void userUpdate(UserDto user);
	
}
