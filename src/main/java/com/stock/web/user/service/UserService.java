package com.stock.web.user.service;

import com.stock.web.user.domain.LoginHistory;
import com.stock.web.user.domain.UserDto;

import java.util.List;

public interface UserService {

    public void register(UserDto user);

    public int deleteAll();

    public Integer login(UserDto user);

    public Integer idCheck(UserDto user);

    public UserDto userInfo(UserDto user);

    public void userEdit(UserDto user);

    public void loginHistroy(LoginHistory log);

    public List<LoginHistory> loginList(UserDto user);
}
