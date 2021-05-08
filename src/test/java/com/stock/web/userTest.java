package com.stock.web;

import java.awt.font.ImageGraphicAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.ArrayStack;
import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.domain.imagesDto;
import com.stock.web.community.mapper.CommunityMapper;
import com.stock.web.community.service.CommunityService;
import com.stock.web.user.domain.UserDto;

import lombok.Builder;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


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
		List<String> sup1 = new ArrayList<String>();
		List<String> liup1 = new ArrayList<String>();
		String[] buf1 = null;
		String[] sup2 = null;
		List<String> sdown1 = new ArrayList<String>();
		List<String> lidown1 = new ArrayList<String>();
		String[] buf2 = null;
		String[] sdown2  =null;
		try {
			doc = Jsoup.connect(URL).get();
			List<Element> up1 = doc.select("#siselist_tab_0 tbody .tltle");//원하는 태그 선택
			Elements up2 = doc.select("#siselist_tab_0 tbody .number .tah");//원하는 태그 선택
			
			List<Element> down1 = doc.select("#siselist_tab_1 tbody .tltle");//원하는 태그 선택
			Elements down2 = doc.select("#siselist_tab_1 tbody .number .tah");//원하는 태그 선택
		
		
			String check=down1.toString();
			for (int i=0;i<up1.size();i++) {
				liup1.add(up1.get(i).attr("href").toString().substring(up1.get(i).attr("href").toString().lastIndexOf("=")).substring(1));
				log.info(liup1.get(i));
			}
			for (int i=0;i<down1.size();i++) {
				lidown1.add(down1.get(i).attr("href").toString().substring(down1.get(i).attr("href").toString().lastIndexOf("=")).substring(1));
				
				log.info(lidown1.get(i));
			}
			for (int i=0;i<up1.size();i++) {
				sup1.add(up1.get(i).text().toString());
				//log.info(sup1.get(i));
			}
			for (int i=0;i<down1.size();i++) {
			
				sdown1.add(down1.get(i).text().toString());
				//log.info(sdown1.get(i));
			}

			buf1 = up2.text().split(" ");//정보 파싱
			
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
			 for(int i=0 ;i<sup1.size();i++){
				 JsonObject jsonobject = new JsonObject();
				 jsonobject.addProperty("name", sup1.get(i));
				 jsonobject.addProperty("per", sup2[i]);
				 jsonobject.addProperty("h", liup1.get(i));
				 infoArray.add(jsonobject);  		
				
			 }
			 if(!check.isEmpty()) {
			 for(int i=0 ;i<sdown1.size();i++){
				 JsonObject jsonobject = new JsonObject();
				 jsonobject.addProperty("name", sdown1.get(i));
				 jsonobject.addProperty("per", sdown2[i]);
				 jsonobject.addProperty("h", lidown1.get(i));
				 
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
			log.info("sup1확인 _-----------------: " +L);
			
		}
		for (String L: sup2)
		{
			log.info("sup2확인 _-----------------: " +L);
			
		}
		
		for (String L: sdown1)
		{
			log.info("sdown1확인 _-----------------: " +L);
			
		}
		for (String L: sdown2)
		{
			log.info("sdown2확인 _-----------------: " +L);
			
		}
	
	}
	
	@Autowired
	private CommunityService service;
	
	@Autowired
	private CommunityMapper mapper;
	
	
	@Test
	public void autoTest()
	{
			
		try {
			
			//List<Stock> stockList=service.autocomplete("카카오");
			
			// JSONArray jsonArray = JSONArray.fromObject(stockList);
			// log.info(jsonArray.toString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
		
	}
	
	@Test
	public void ListTest()
	{
		CommunityDto com =new CommunityDto();
		com.setContent("안녕하세요");
		com.setHashTag("#안녕하세요#인사글#데이터# 444");
		
		com.setUserId("asd");
		com.setHashTag(com.getHashTag().replaceAll("\\p{Z}",""));
	
		com.setCount(StringUtils.countMatches(com.getHashTag(), "#"));


		//service.write(com);
		log.info("ssssssssssssssssssssssssssssssssssssssss"+com.getCount() +com.getHashTag());
	
	
	}
	
	@Test
	public void ListTest2()
	{
		
		List<CommunityDto> list=service.getList(1,10);
		JSONObject jsonObj1 = new JSONObject();

		jsonObj1.put("session", "kkk");
		JSONArray jsonArray = JSONArray.fromObject(list);
		jsonArray.add(jsonObj1);
		log.info(jsonArray);
	
		
		

		//service.write(com);
	
	
	
	}
	@Test
	public void likePush()
	{
		
		CommunityDto bid = CommunityDto.builder().ID(1L).build();
		UserDto user =UserDto.builder().id("222").build();
		Map<String ,Object> map =new HashMap<String, Object>();
		map.put("v_user_id", "222");
		map.put("v_bbs_id", 57L );
		map.put("v_result", "" );
		map.put("v_result2", "" );
		mapper.likePush(map);
		JSONObject resultObj = new JSONObject();
		resultObj.put("v_result","100");
		JSONArray jsonArray = JSONArray.fromObject(map.get("v_result"));
		
		//Map<String, Object> map =service.likePush(user, bid);
		log.info("결과--------------------------------------"+map.get("v_result2"));
	
		
		

		//service.write(com);
	
	
	
	}
	
	
	@Test
	public void selectConetent()
	{
		
		//CommunityDto dto=mapper.selectContent(57L,"222");
		UserDto user =new UserDto();
		user.setId("222");
		int k=44;
		CommunityDto dto=service.selectContent(Long.valueOf(k),user.getId());

	
		JSONArray jsonArray = JSONArray.fromObject(dto);
	
		log.info(jsonArray.toString());
	
		
		

		//service.write(com);
	
	
	
	}
	@Test
	public void insertImage()
	{	
		imagesDto k =new imagesDto();
		k.setFileName("22");
		k.setFileId("22");
		imagesDto b =new imagesDto();
		b.setFileName("44");
		b.setFileId("44");
		List<imagesDto> a =new ArrayList<imagesDto>();
		a.add(k);
		a.add(b);
	
		Map<String ,Object> map2 =new HashMap<String, Object>();
		map2.put("list", a);
		map2.put("bbs_id", 70L);
		mapper.insertImage(map2);
		//service.write(com);
	
	
	
	}
	
	
	@Test
	public void listTest3()
	{
		
		List<CommunityDto> list=service.getList(1,10,"222");
		
		
		
		JSONArray jsonArray = JSONArray.fromObject(list);


		log.info(jsonArray);
		log.info(jsonArray);
	
		
		

		//service.write(com);
	
	
	
	}
	@Test
	public void commentWrite()
	{	
		Comments com =new Comments();
		com.setBbs_id(1L);
		com.setComments("테스트용 댓글");
		com.setUSER_ID("222");
		
		service.writeComment(com);
		
		//service.write(com);
	
	
	
	}
	
	
	

}
	
	

