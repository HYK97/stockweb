package com.stock.web.stockinfo.controller;


import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;
import com.stock.web.community.service.CommunityService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/stockinfo/*")
@RequiredArgsConstructor
@Log4j
public class StockInfoController {
	
	
	
	@ResponseBody
	@PostMapping("data")
	public String data(HttpSession session)
	{
		String URL1 = "https://finance.naver.com/sise/sise_group.nhn?type=upjong";
		String URL2 = "https://finance.naver.com/sise/theme.nhn";
		String URL3 = "https://finance.naver.com/sise/sise_group.nhn?type=group";
		Document doc1 = null;
		Document doc2 = null;
		Document doc3 = null;
		Elements content1;
		Elements content2;
		Elements content3;
		JsonObject jsonobject = new JsonObject();
			try {
				doc1 = Jsoup.connect(URL1).get();
				doc2 = Jsoup.connect(URL2).get();
				doc3 = Jsoup.connect(URL3).get();
				content1 = doc1.select("#contentarea_left");//원하는 태그 선택
				content2 = doc2.select("#contentarea_left");//원하는 태그 선택
				content3 = doc3.select("#contentarea_left");//원하는 태그 선택
				
				
				jsonobject.addProperty("html1",content1.html().toString());
				jsonobject.addProperty("html2",content2.html().toString());
				jsonobject.addProperty("html3",content3.html().toString());
				log.info(jsonobject.toString());
				

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
						
			if(session.getAttribute("login")==null) {
				
			}else{
				
				session.setAttribute("login",session.getAttribute("login"));
			}
			
			return jsonobject.toString();
	}
	
	
	@GetMapping("main")
	public void main(HttpSession session)
	{				
			if(session.getAttribute("login")==null) {
				
			}else{
				
				session.setAttribute("login",session.getAttribute("login"));
			}
			
			
	}
	@GetMapping("guide")
	public void guide(HttpSession session)
	{				
			if(session.getAttribute("login")==null) {
				
			}else{
				
				session.setAttribute("login",session.getAttribute("login"));
			}
			
			
	}
	

	
	

	
	
	}
		
	
	
	


