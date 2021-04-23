package com.stock.web.community.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.stock.web.community.domain.Stock;
import com.stock.web.community.mapper.CommunityMapper;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class CommunityServiceImpl implements CommunityService {
	
	private final CommunityMapper mapper;

	@Override
	public List<Stock> autocomplete(String search) {
		// TODO Auto-generated method stub
		return mapper.autocomplete(search);
	}



	
	

}
