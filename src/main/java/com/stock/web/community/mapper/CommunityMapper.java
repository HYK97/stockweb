package com.stock.web.community.mapper;

import java.util.List;

import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;



public interface CommunityMapper {
	
	public List<Stock> autocomplete();
	public void insert(CommunityDto com);
	public List<CommunityDto> selectList();

}
