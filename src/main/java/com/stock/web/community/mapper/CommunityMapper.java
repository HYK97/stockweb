package com.stock.web.community.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.domain.imagesDto;



public interface CommunityMapper {
	
	public List<Stock> autocomplete();
	public void insert(Map<String ,Object> bbsid);
	public List<Comments> commentsList(@Param("fpage")int fpage,@Param("epage")int epage,@Param("bid")Long bid);
	public List<CommunityDto> selectList(@Param("fpage")int fpage,@Param("epage")int epage,@Param("user")String user);
	public List<CommunityDto> searchList(@Param("fpage")int fpage,@Param("epage")int epage,@Param("user")String user,@Param("search")String search);
	public CommunityDto selectContent(@Param("bid")Long bid,@Param("user")String user);
	public void likePush(Map<String ,Object> map);
	public void insertImage(Map<String ,Object> map);
	public void writeComment(Comments com);
	public List<CommunityDto> myContentList(@Param("fpage")int fpage,@Param("epage")int epage,@Param("user")String user);
	public List<CommunityDto> likeContent(@Param("fpage")int fpage,@Param("epage")int epage,@Param("user")String user);
	
}	
