package com.stock.web.community.service;


import org.springframework.stereotype.Service;

import com.stock.web.user.domain.UserDto;
import com.stock.web.user.mapper.UserMapper;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class CommunityServiceImpl implements CommunityService {
	
	private final UserMapper mapper;
	@Override
	public void register(UserDto user) {
		// TODO Auto-generated method stub
		mapper.insert(user);

	}
	@Override
	public int deleteAll() {
		// TODO Auto-generated method stub
		return mapper.deleteAll();

	}
	@Override
	public Integer login(UserDto user) {
		// TODO Auto-generated method stub
		return mapper.login(user);
	}
	

}
