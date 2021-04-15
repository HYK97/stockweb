package com.stock.web.user.service;


import org.springframework.stereotype.Service;

import com.stock.web.user.domain.UserDto;
import com.stock.web.user.mapper.UserMapper;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
	
	private final UserMapper mapper;
	@Override
	public void register(UserDto user) {
		// TODO Auto-generated method stub
		mapper.insert(user);

	}
	@Override
	public int deleteall() {
		// TODO Auto-generated method stub
		return mapper.deleteall();

	}
	@Override
	public Integer login(UserDto user) {
		// TODO Auto-generated method stub
		return mapper.login(user);
	}
	

}
