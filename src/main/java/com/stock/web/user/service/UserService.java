package com.stock.web.user.service;

import com.stock.web.user.domain.UserDto;

public interface UserService {
	
	public void register(UserDto user);
	public int deleteAll();
	public Integer login(UserDto user);
	public Integer idCheck(UserDto user);
	public UserDto userInfo(UserDto user);
	public void userEdit(UserDto user);
}
