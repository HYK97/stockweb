package com.stock.web.community.service;

import com.stock.web.user.domain.UserDto;

public interface CommunityService {
	
	public void register(UserDto user);
	public int deleteAll();
	public Integer login(UserDto user);

}
