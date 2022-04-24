package com.stock.web.companyinfo.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/companyinfo/*")
@RequiredArgsConstructor
@Log4j
public class CompanyInfoController {


    @GetMapping("about")
    public void about(HttpSession session) {
        if (session.getAttribute("login") == null) {

        } else {

            session.setAttribute("login", session.getAttribute("login"));
        }


    }

    @GetMapping("helpdesk")
    public void helpdesk(HttpSession session) {
        if (session.getAttribute("login") == null) {

        } else {

            session.setAttribute("login", session.getAttribute("login"));
        }


    }


    @GetMapping("helpterm")
    public void helpterm(HttpSession session) {
        if (session.getAttribute("login") == null) {

        } else {

            session.setAttribute("login", session.getAttribute("login"));
        }


    }

    @GetMapping("faq")
    public void faq(HttpSession session) {
        if (session.getAttribute("login") == null) {

        } else {

            session.setAttribute("login", session.getAttribute("login"));
        }


    }

    @GetMapping("question")
    public void question(HttpSession session) {
        if (session.getAttribute("login") == null) {

        } else {

            session.setAttribute("login", session.getAttribute("login"));
        }


    }


}
		
	
	
	


