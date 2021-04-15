package com.stock.web.user.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stock.web.user.domain.UserDto;
import com.stock.web.user.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@RequiredArgsConstructor
@Log4j
public class UserController {
	
	private final UserService service;
	
	@GetMapping("register")
	public void ss()
	{
	
	}
	
	@PostMapping("register")
	public String register(UserDto user)
	{
		service.register(user);
		return "redirect:/user/login";
	}
	
	@GetMapping("login")
	public void login()
	{
	
	}
	
	@PostMapping("login")
	public String login(UserDto user,RedirectAttributes redirectAttributes)
	{
		Integer result=service.login(user);
		
		if(result!=0)
		{
			redirectAttributes.addFlashAttribute("result","success");
			return "redirect:/user/login"; //성공
		}else
		{
			redirectAttributes.addFlashAttribute("result","false");
			return "redirect:/user/login"; //실패
		}
	}
	

}
