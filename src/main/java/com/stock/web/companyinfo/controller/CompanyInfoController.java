package com.stock.web.companyinfo.controller;


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
@RequestMapping("/companyinfo/*")
@RequiredArgsConstructor
@Log4j
public class CompanyInfoController {
	
	

	
	
	@GetMapping("about")
	public void about(HttpSession session)
	{				
			if(session.getAttribute("login")==null) {
				
			}else{
				
				session.setAttribute("login",session.getAttribute("login"));
			}
			
			
	}
	@GetMapping("helpdesk")
	public void helpdesk(HttpSession session)
	{				
			if(session.getAttribute("login")==null) {
				
			}else{
				
				session.setAttribute("login",session.getAttribute("login"));
			}
			
			
	}
	@GetMapping("contact")
	public void contact(HttpSession session)
	{				
			if(session.getAttribute("login")==null) {
				
			}else{
				
				session.setAttribute("login",session.getAttribute("login"));
			}
			
			
	}
	
	
	

	
	

	
	
	}
		
	
	
	


