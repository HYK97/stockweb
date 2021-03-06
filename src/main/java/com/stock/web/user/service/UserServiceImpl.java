package com.stock.web.user.service;


import com.stock.web.user.domain.LoginHistory;
import com.stock.web.user.domain.UserDto;
import com.stock.web.user.mapper.UserMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserMapper mapper;

    @Override
    public void register(UserDto user) {
        mapper.insert(user);

    }

    @Override
    public int deleteAll() {
        return mapper.deleteAll();

    }

    @Override
    public Integer login(UserDto user) {
        return mapper.login(user);
    }

    @Override
    public Integer idCheck(UserDto user) {
        return mapper.idCheck(user);
    }

    @Override
    public UserDto userInfo(UserDto user) {
        return mapper.userInfo(user);
    }

    @Override
    public void userEdit(UserDto user) {
        mapper.userUpdate(user);
    }

    @Override
    public void loginHistroy(LoginHistory log) {
        mapper.loginHistroy(log);
    }

    @Override
    public List<LoginHistory> loginList(UserDto user) {
        return mapper.loginList(user);
    }


}
