package com.stock.web.community.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.user.domain.UserDto;

public interface CommunityService {
	
	public List<Stock> autocomplete();
	public void write(CommunityDto com);
	public List<CommunityDto> getList(int fpage,int epage,String user);
	public String likePush(UserDto user, CommunityDto bid);
	public CommunityDto selectContent(Long bid,String user);
}