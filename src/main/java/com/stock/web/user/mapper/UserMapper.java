package com.stock.web.user.mapper;

import com.stock.web.user.domain.LoginHistory;
import com.stock.web.user.domain.UserDto;

import java.util.List;


public interface UserMapper {

    public void insert(UserDto user);

    public int deleteAll();

    public Integer login(UserDto user);

    public Integer idCheck(UserDto user);

    public UserDto userInfo(UserDto user);

    public void userUpdate(UserDto user);

    public void loginHistroy(LoginHistory log);

    public List<LoginHistory> loginList(UserDto user);

}
