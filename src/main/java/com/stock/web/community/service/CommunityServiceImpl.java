package com.stock.web.community.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stock.web.userTest;
import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.mapper.CommunityMapper;
import com.stock.web.user.domain.UserDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
@RequiredArgsConstructor
public class CommunityServiceImpl implements CommunityService {
	
	private final CommunityMapper mapper;

	@Override
	public List<Stock> autocomplete() {
		// TODO Auto-generated method stub
		return mapper.autocomplete();
	}
	
	@Override
	public void write(CommunityDto com) {
		mapper.insert(com);
		
	}

	@Override
	public List<CommunityDto> getList(int fpage,int epage,String user) {
		// TODO Auto-generated method stub
		return mapper.selectList(fpage,epage,user);
	}

	@Override
	public String likePush(UserDto user, CommunityDto bid) {
		// TODO Auto-generated method stub
		Map<String ,Object> map =new HashMap<String, Object>();
		map.put("v_user_id", user.getId());
		map.put("v_bbs_id", bid.getID());
		map.put("v_result", "" );
		log.info("아이디 : "+map.get("v_user_id")+"글번호 : "+map.get("v_bbs_id"));
		mapper.likePush(map);
		log.info("온값 ------"+map.get("v_result2"));
		return (String) map.get("v_result2");
	}

	@Override
	public CommunityDto selectContent(Long bid, String user) {
		log.info("게시판" +bid+"유저명"+user);
		// TODO Auto-generated method stub
		return mapper.selectContent(bid, user);
	}

	@Override
	public List<Comments> commentsList(int fpage, int epage, Long bid) {
		// TODO Auto-generated method stub
		return mapper.commentsList(fpage, epage, bid);
	}
	



	
	

}
