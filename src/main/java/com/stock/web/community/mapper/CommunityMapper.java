package com.stock.web.community.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;



public interface CommunityMapper {
	
	public List<Stock> autocomplete();
	public void insert(CommunityDto com);
	public List<Comments> commentsList(@Param("fpage")int fpage,@Param("epage")int epage,@Param("bid")Long bid);
	public List<CommunityDto> selectList(@Param("fpage")int fpage,@Param("epage")int epage,@Param("user")String user);
	public CommunityDto selectContent(@Param("bid")Long bid,@Param("user")String user);
	public void likePush(Map<String ,Object> map);
}	
