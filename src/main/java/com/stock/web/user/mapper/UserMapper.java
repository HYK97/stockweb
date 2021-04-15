package com.stock.web.user.mapper;

import com.stock.web.user.domain.UserDto;


public interface UserMapper {
	
	public void insert(UserDto user);
	public int deleteall();
	public Integer login(UserDto user);
	
	
}
