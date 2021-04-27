package com.stock.web.community.controller;


import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.service.CommunityService;
import com.stock.web.user.domain.UserDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/community/*")
@RequiredArgsConstructor
@Log4j
public class CommuController {
	
	private final CommunityService service;
	
	@GetMapping("community")
	public void community(HttpSession session)
	{
		List<CommunityDto> list =service.getList();
		
		session.setAttribute("login",session.getAttribute("login"));
	}
	
	@PostMapping("communityList")
	@ResponseBody
	public String communityList(HttpSession session)
	{
		List<CommunityDto> list =service.getList();
		JSONArray jsonArray = JSONArray.fromObject(list);
		log.info(jsonArray);
		session.setAttribute("login",session.getAttribute("login"));
        return jsonArray.toString();	
	}
	
	
	
	
	@PostMapping("write")
	public String write(CommunityDto com,HttpSession session)
	{
		UserDto user =(UserDto)session.getAttribute("login");
		if(user.getId().isEmpty())
		{
			return "redirect:/user/login";
		}
		com.setHASHTAG(com.getHASHTAG().replaceAll("\\p{Z}",""));
		com.setUSER_ID(user.getId());
		com.setCOUNT(StringUtils.countMatches(com.getHASHTAG(), "#"));
		service.write(com);
		session.setAttribute("login",session.getAttribute("login"));
		return "redirect:/community/community";
	}
	
	
	@GetMapping("padcast")
	public void padcast(HttpSession session)
	{
		session.setAttribute("login",session.getAttribute("login"));
	}
	
	
	@GetMapping("chart")
	public void chart(HttpSession session)
	{
		session.setAttribute("login",session.getAttribute("login"));
	}
	
	@PostMapping("autocomplete") 
	@ResponseBody
	public String autocomplete(HttpSession session)
	{
		log.info("����=--------------------------------------------------------------------------------");
		List<Stock> stockList=service.autocomplete();
		
		JSONArray jsonArray = JSONArray.fromObject(stockList);
		log.info(jsonArray);
        return jsonArray.toString();	
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
		JsonArray infoArray = new JsonArray();
		try {
			doc = Jsoup.connect(URL).get();
			Elements up1 = doc.select("#siselist_tab_0 tbody .tltle");//���ϴ� �±� ����
			Elements up2 = doc.select("#siselist_tab_0 tbody .number .tah");//���ϴ� �±� ����
			Elements down1 = doc.select("#siselist_tab_1 tbody .tltle");//���ϴ� �±� ����
			Elements down2 = doc.select("#siselist_tab_1 tbody .number .tah");//���ϴ� �±� ����
			log.info("----------------------------����");
			log.info("----------------------------"+down1.toString());
			String check= down1.toString();
			sup1 = up1.text().split(" ");//���� �Ľ�
			buf1 = up2.text().split(" ");//���� �Ľ�
			sdown1 = down1.text().split(" ");//���� �Ľ�
			buf2 = down2.text().split(" ");//���� �Ľ�
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
			
			
			
			 
			 for(int i=0 ;i<sup1.length;i++){
				 JsonObject jsonobject = new JsonObject();
				 jsonobject.addProperty("name", sup1[i]);
				 jsonobject.addProperty("per", sup2[i]);
				 infoArray.add(jsonobject);  		
				
			 }
			 if(!check.isEmpty()) {
				 
			 for(int i=0 ;i<sdown1.length;i++){
				 JsonObject jsonobject = new JsonObject();
				 jsonobject.addProperty("name", sdown1[i]);
				 jsonobject.addProperty("per", sdown2[i]);
				 
				 infoArray.add(jsonobject);
				 
			 }
			 }
		
			 log.info(infoArray.toString());
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //HTML�� ���� ������ ��������
		for (String L: sup1)
		{
			log.info("Ȯ�� _-----------------: " +L);
			
		}
		for (String L: sup2)
		{
			log.info("Ȯ�� _-----------------: " +L);
			
		}
		
		for (String L: sdown1)
		{
			log.info("Ȯ�� _-----------------: " +L);
			
		}
		for (String L: sdown2)
		{
			log.info("Ȯ�� _-----------------: " +L);
			
		}
		return infoArray.toString();
	
	}
	
	
	}
		
	
	
	


