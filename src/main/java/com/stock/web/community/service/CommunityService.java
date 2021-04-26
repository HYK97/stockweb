package com.stock.web.community.service;

import java.util.List;

import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;

public interface CommunityService {
	
	public List<Stock> autocomplete();
	public void write(CommunityDto com);
}