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
	public int deleteAll() {
		// TODO Auto-generated method stub
		return mapper.deleteAll();

	}
	@Override
	public Integer login(UserDto user) {
		// TODO Auto-generated method stub
		return mapper.login(user);
	}
	@Override
	public Integer idCheck(UserDto user) {
		// TODO Auto-generated method stub
		return mapper.idCheck(user);
	}
	@Override
	public UserDto userInfo(UserDto user) {
		// TODO Auto-generated method stub
		return mapper.userInfo(user);
	}
	@Override
	public void userEdit(UserDto user) {
		// TODO Auto-generated method stub
		mapper.userUpdate(user);
	}
	

}
