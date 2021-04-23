package com.stock.web;

import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.service.CommunityService;

import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@WebAppConfiguration
public class userTest {

//	@Autowired
//	private UserService service;
//	
//	@Autowired
//	private UserController contoller;
//	
//	
//	@Autowired 
//    private	MockMvc mockMvc;
//	@Test
//	public void dbinsertTest() {
//		service.deleteall();
//		Date time = new Date();
////		  UserDto dto = UserDto.builder()
////				  .id("hy") 
////				  .name("kim")
////				  .password("kim1122518") 
////				  .birthday(time) 
////				  .build();
//		UserDto dto = new UserDto();
//		dto.setBirthday("2021-04-14");
//		dto.setId("sss");
//		dto.setName("ds");
//		dto.setPassword("sds");
//				
//		 
//		log.info("dto 는"+dto.getName());
//		log.info("service   "+service);
//		service.register(dto);
//	}
	

	
	
	
	@Test
	public void header(){
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
			log.info("----------------------------여기");
			log.info("----------------------------"+down1.toString());
			String check= down1.toString();
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
			
			
			
			 JsonArray infoArray = new JsonArray();
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
	
	}
	
	@Autowired
	private CommunityService service;
	
	@Test
	public void autoTest()
	{
			
		try {
			
			List<Stock> stockList=service.autocomplete("카카오");
			
			 JSONArray jsonArray = JSONArray.fromObject(stockList);
			 log.info(jsonArray.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
		
	}
	
	
	
	
	
	}
	
	

