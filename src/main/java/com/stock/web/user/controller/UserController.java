package com.stock.web.user.controller;


import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.service.CommunityService;
import com.stock.web.user.domain.LoginHistory;
import com.stock.web.user.domain.UserDto;
import com.stock.web.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user/*")
@RequiredArgsConstructor
@Log4j

public class UserController {

    private final UserService service;
    private final CommunityService comservice;

    @PostMapping("userEdit")
    public String userEdit(HttpSession session, UserDto user, RedirectAttributes red) {

        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";
        } else {
            user.setId(((UserDto) session.getAttribute("login")).getId());
        }

        red.addFlashAttribute("msg", "success");
        service.userEdit(user);
        return "redirect:/user/userinfo";
    }


    @GetMapping("register")
    public String register(HttpSession session) {
        if (session.getAttribute("login") == null) {

            return "/user/register";

        } else {

            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/community/community";
        }
    }

    @GetMapping("likeContent")
    public String likeContent(HttpSession session) {
        if (session.getAttribute("login") == null) {

            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/user/login";

        } else {

            return "/user/likeContent";
        }
    }

    @GetMapping("myWrite")
    public String myWrite(HttpSession session) {

        if (session.getAttribute("login") == null) {
            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/user/login";


        } else {

            return "/user/myWrite";
        }
    }

    @PostMapping("communityList")
    @ResponseBody
    public String communityList(HttpSession session, int fpage, int epage) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
        } else {
            user = (UserDto) session.getAttribute("login");
        }

        List<CommunityDto> list = comservice.myContentList(fpage, epage, user.getId());

        JSONArray jsonArray = JSONArray.fromObject(list);

        session.setAttribute("login", session.getAttribute("login"));
        return jsonArray.toString();
    }


    @PostMapping("likeContentList")
    @ResponseBody
    public String likeContentList(HttpSession session, int fpage, int epage) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
        } else {
            user = (UserDto) session.getAttribute("login");
        }

        List<CommunityDto> list = comservice.likeContent(fpage, epage, user.getId());

        JSONArray jsonArray = JSONArray.fromObject(list);

        session.setAttribute("login", session.getAttribute("login"));
        return jsonArray.toString();
    }


    @PostMapping("userinfos")
    @ResponseBody
    public String userinfos(HttpSession session) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";
        } else {
            user = (UserDto) session.getAttribute("login");
        }

        UserDto search = service.userInfo(user);
        JSONArray jsonArray = JSONArray.fromObject(search);

        return jsonArray.toString();
    }

    @GetMapping("userinfo")
    public String userinfo(HttpSession session) {
        if (session.getAttribute("login") == null) {
            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/user/login";

        } else {

            return "/user/userinfo";
        }

    }

    @PostMapping("register")
    public String register(UserDto user, HttpSession session) {
        if (session.getAttribute("login") == null) {
            service.register(user);
            return "redirect:/user/login";

        } else {

            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/community/community";
        }

    }

    @GetMapping("login")
    public String login(HttpSession session) {
        if (session.getAttribute("login") != null) {

            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/community/community";

        } else {
            return "/user/login";
        }

    }

    @PostMapping("login")
    @ResponseBody
    public String login(UserDto user, HttpSession session, HttpServletRequest request) {
        Integer result = service.login(user);

        if (result != 0) {

            session.setAttribute("login", user);
            String ip = request.getRemoteAddr();

            LoginHistory log = new LoginHistory();
            log.setId(user.getId());
            log.setIp(ip);
            service.loginHistroy(log);
            return "1";
        } else {

            return "0";
        }
    }

    @GetMapping("logout")
    public String logout(HttpSession session) {

        session.removeAttribute("login");
        return "/community/community";

    }

    @PostMapping("logout")
    public String logoutpos(HttpSession session) {

        session.removeAttribute("login");
        return "/community/community";

    }

    @PostMapping("idCheck")
    @ResponseBody
    public String idCheck(UserDto user) {
        Integer result = service.idCheck(user);

        if (result != 0) {

            return "1"; //���̵�����
        } else {

            return "0"; //����
        }
    }

    @GetMapping("loginHistory")
    public String loginHistory(Model model, HttpSession session) {
        if (session.getAttribute("login") == null) {
            session.setAttribute("login", session.getAttribute("login"));
            return "redirect:/user/login";

        } else {

            model.addAttribute("user", service.loginList((UserDto) session.getAttribute("login")));
            return "/user/loginHistroy";
        }

    }


}
