package com.stock.web.community.mapper;

import com.stock.web.user.domain.UserDto;


public interface CommunityMapper {
	
	public void insert(UserDto user);
	public int deleteall();
	public Integer login(UserDto user);
	
	
}
