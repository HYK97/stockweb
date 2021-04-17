package com.stock.web.community.controller;


import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.stock.web.community.service.CommunityService;
import com.stock.web.user.domain.UserDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/community/*")
@RequiredArgsConstructor
@Log4j
public class CommuController {
	
	//private final CommunityService service;
	
	@GetMapping("community")
	public void main()
	{
	
	}
	
	@PostMapping("header")
	@ResponseBody
	public String header()
	{
		
			String URL = "https://finance.naver.com/sise/";
			Document doc;
			String[] sup1 = null;
			String[] buf1 = null;
			String[] sup2 = null;
			String[] sdown1 = null;
			String[] buf2 = null;
			String[] sdown2  =null;
			try {
				doc = Jsoup.connect(URL).get();
				Elements up1 = doc.select("#siselist_tab_0 tbody .tltle");//원하는 태그 선택
				Elements up2 = doc.select("#siselist_tab_0 tbody .number .tah");//원하는 태그 선택
				Elements down1 = doc.select("#siselist_tab_1 tbody .tltle");//원하는 태그 선택
				Elements down2 = doc.select("#siselist_tab_1 tbody .number .tah");//원하는 태그 선택
			
				sup1 = up1.text().split(" ");//정보 파싱
				buf1 = up2.text().split(" ");//정보 파싱
				sdown1 = down1.text().split(" ");//정보 파싱
				buf2 = down2.text().split(" ");//정보 파싱
					//0 1 2 3 4 5
				sup2= new String[buf1.length/2];
				sdown2= new String[buf2.length/2];
		
				int odd=0;
				for(int i=0;i<buf1.length;i++){
					if(i % 2 == 1){
						sup2[odd]= buf1[i];
						odd++;
					}	
				}
				odd=0;
				for(int i=0;i<buf2.length;i++){
					if(i % 2 == 1){
						sdown2[odd]= buf2[i];
						odd++;
					}
							
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} //HTML로 부터 데이터 가져오기
			for (String L: sup1)
			{
				log.info("확인 _-----------------: " +L);
				
			}
			for (String L: sup2)
			{
				log.info("확인 _-----------------: " +L);
				
			}
			
			for (String L: sdown1)
			{
				log.info("확인 _-----------------: " +L);
				
			}
			for (String L: sdown2)
			{
				log.info("확인 _-----------------: " +L);
				
			}
		
			 JsonArray infoArray = new JsonArray();
			 for(int i=0 ;i<sup1.length;i++){
				 JsonObject jsonobject = new JsonObject();
				 jsonobject.addProperty("name", sup1[i]);
				 jsonobject.addProperty("per", sup2[i]);
				 infoArray.add(jsonobject);  
				
			 }
			 for(int i=0 ;i<sdown1.length;i++){
				 JsonObject jsonobject = new JsonObject();
				 jsonobject.addProperty("name", sdown1[i]);
				 jsonobject.addProperty("per", sdown2[i]);
				 infoArray.add(jsonobject);  	
			
			 }
			
			 return infoArray.toString();
	}
		
	
	
	

}
