package com.stock.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.time.LocalDate;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import com.stock.web.user.controller.UserController;
import com.stock.web.user.domain.UserDto;
import com.stock.web.user.mapper.UserMapper;
import com.stock.web.user.service.UserService;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@WebAppConfiguration
public class userTest {

	@Autowired
	private UserService service;
	
	@Autowired
	private UserController contoller;
	
	
	@Autowired 
    private	MockMvc mockMvc;
	@Test
//	public void dbinsertTest() {
//		service.deleteall();
//		Date time = new Date();
////		  UserDto dto = UserDto.builder()
////				  .id("hy") 
////				  .name("kim")
////				  .password("***REMOVED***") 
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
	
	@Before
    public void createController() {
        mockMvc = MockMvcBuilders.standaloneSetup(contoller).build();
    }


	@Test
	public void controller() throws Exception {
		mockMvc.perform(post("/user/register").param("id", "isuisu").param("password", "김테스트").param("name", "여").param("birthday", "2012-03-12"))	// (5)
         .andExpect(status().isOk())
         .andDo(print());// (6)(7)
      
		
	}
	}
	
	

