package com.stock.web.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;



public interface CommunityMapper {
	
	public List<Stock> autocomplete();
	public void insert(CommunityDto com);
	public List<CommunityDto> selectList(@Param("fpage")int fpage,@Param("epage")int epage);

}
