package com.stock.web.user.service;

import com.stock.web.user.domain.UserDto;

public interface UserService {
	
	public void register(UserDto user);
	public int deleteall();
	public Integer login(UserDto user);

}
