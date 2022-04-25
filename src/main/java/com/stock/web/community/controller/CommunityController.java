package com.stock.web.community.controller;


import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.domain.imagesDto;
import com.stock.web.community.service.CommunityService;
import com.stock.web.user.domain.UserDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;
import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/community/*")
@RequiredArgsConstructor
@Log4j
public class CommunityController {

    private final CommunityService service;

    @GetMapping("community")
    public void community(HttpSession session) {


        session.setAttribute("login", session.getAttribute("login"));
    }


    @PostMapping("viewContent")
    @ResponseBody
    public String viewContent(HttpSession session, int id) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            session.setAttribute("login", session.getAttribute("login"));
            user = (UserDto) session.getAttribute("login");
        }
        CommunityDto dto = service.selectContent(Long.valueOf(id), user.getId());
        JSONArray jsonArray = JSONArray.fromObject(dto);
        return jsonArray.toString();
    }


    @PostMapping("likePush")
    @ResponseBody
    public String likePush(HttpSession session, int id) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            return "error";
        } else {
            session.setAttribute("login", session.getAttribute("login"));
        }
        CommunityDto com = new CommunityDto();
        com.setID(Long.valueOf(id));

        String result2 = service.likePush((UserDto) session.getAttribute("login"), com);
        return result2;


    }

    @PostMapping("commnets")
    @ResponseBody
    public String commnets(HttpSession session, int fpage, int epage, int bid) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
        } else {
            user = (UserDto) session.getAttribute("login");
            session.setAttribute("login", session.getAttribute("login"));
        }
        List<Comments> list = service.commentsList(fpage, epage, Long.valueOf(bid));

        JSONArray jsonArray = JSONArray.fromObject(list);

        session.setAttribute("login", session.getAttribute("login"));
        return jsonArray.toString();
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

        List<CommunityDto> list = service.getList(fpage, epage, user.getId());

        JSONArray jsonArray = JSONArray.fromObject(list);


        session.setAttribute("login", session.getAttribute("login"));
        return jsonArray.toString();
    }

    @PostMapping("search")
    @ResponseBody
    public String search(HttpSession session, String search, int fpage, int epage) {

        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
        } else {
            user = (UserDto) session.getAttribute("login");
        }

        List<CommunityDto> list = service.searchList(fpage, epage, user.getId(), search);

        JSONArray jsonArray = JSONArray.fromObject(list);


        session.setAttribute("login", session.getAttribute("login"));
        return jsonArray.toString();

    }


    @PostMapping("commentsWrite")
    @ResponseBody
    public String commentsWrite(HttpSession session, Comments com) {

        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";

        } else {
            user = (UserDto) session.getAttribute("login");
            session.setAttribute("login", session.getAttribute("login"));
        }
        com.setUSER_ID(user.getId());

        service.writeComment(com);
        return "1";

    }


    @PostMapping("updateComment")
    @ResponseBody
    public String updateComment(HttpSession session, Comments com) {

        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";

        } else {
            user = (UserDto) session.getAttribute("login");
            session.setAttribute("login", session.getAttribute("login"));
        }
        com.setUSER_ID(user.getId());
        int result = service.modifyComment(com);
        if (result != 0) {
            return "1";
        } else {
            return "0";
        }

    }


    @PostMapping("deleteContent")
    @ResponseBody
    public String deleteContent(HttpSession session, int ID, @RequestParam(value = "imglist[]", required = false) List<String> imglist, HttpServletRequest request) {
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";
        } else {
            user = (UserDto) session.getAttribute("login");
            session.setAttribute("login", session.getAttribute("login"));
        }
        for (String k : imglist)

            if (!imglist.get(0).equals("null")) {
                for (int i = 0; i < imglist.size(); i++) {
                    String root = request.getSession().getServletContext().getRealPath("/");
                    String path = root + "\\" + imglist.get(i);
                    File file = new File(path);
                    Boolean check = file.delete();

                    if (!check) {
                        return "0";
                    }

                }
            }

        int result = service.deleteContent(Long.valueOf(ID));
        if (result != 0) {
            return "1";
        } else {
            return "0";
        }


    }

    @PostMapping("deleteComment")
    @ResponseBody
    public String deleteComment(HttpSession session, Comments com) {
        int result = service.deleteComment(com);
        if (result != 0) {
            return "1";
        } else {
            return "0";
        }


    }


    @PostMapping("write")
    public String write(HttpServletRequest request, CommunityDto com, HttpSession session, List<MultipartFile> uploadFile) {
        String referer = request.getHeader("Referer");

        com.setImglists(new ArrayList<imagesDto>());
        LocalDate now = LocalDate.now();
        String root = request.getSession().getServletContext().getRealPath("/") + "resources/upload/" + now + "/";
        String path = "resources/upload/" + now + "/";
        File fileDir = new File(root);
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";
        } else {
            user = (UserDto) session.getAttribute("login");
        }

        if (com.getHASHTAG() != "" || com.getHASHTAG().isEmpty()) {
            com.setHASHTAG(com.getHASHTAG().replaceAll("\\p{Z}", ""));
            com.setUSER_ID(user.getId());
            com.setCOUNT(StringUtils.countMatches(com.getHASHTAG(), "#"));
        } else {
            com.setCOUNT(0);
        }

        if (!uploadFile.get(0).isEmpty()) {
            for (MultipartFile multipartFile : uploadFile) {
                log.info("Upload File Name : " + multipartFile.getOriginalFilename());
                log.info("Upload File size : " + multipartFile.getSize());
                UUID uuid = UUID.randomUUID();
                String uploadFileName = multipartFile.getOriginalFilename();
                String uploadFileUuid = uuid.toString() + "_" + uploadFileName;
                File saveFile = new File(root, uploadFileUuid);
                imagesDto img = new imagesDto();
                img.setFileName(path + uploadFileUuid);
                img.setFileId(uuid.toString());

                com.getImglists().add(img);
                try {
                    multipartFile.transferTo(saveFile);

                } catch (Exception e) {
                    log.error(e.getMessage());
                    ;
                }
            }
        }
        service.write(com);
        session.setAttribute("login", session.getAttribute("login"));
        if (referer.equals("http://localhost:8080/user/myWrite") || referer.equals("http://localhost:8080/user/likeContent")) {
            return "redirect:/user/myWrite";
        } else {
            return "redirect:/community/community";

        }
    }

    @PostMapping("updateContent")
    public String updateContent(HttpServletRequest request, CommunityDto com, HttpSession session, List<MultipartFile> uploadFile) {
        String referer = request.getHeader("Referer");
        com.setImglists(new ArrayList<imagesDto>());
        LocalDate now = LocalDate.now();
        String root = request.getSession().getServletContext().getRealPath("/") + "resources/upload/" + now + "/";
        String path = "resources/upload/" + now + "/";
        File fileDir = new File(root);
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }
        UserDto user = new UserDto();
        if (session.getAttribute("login") == null) {
            user.setId("");
            return "redirect:/user/login";
        } else {
            user = (UserDto) session.getAttribute("login");
        }


        if (com.getHASHTAG() != "" || com.getHASHTAG().isEmpty()) {
            com.setHASHTAG(com.getHASHTAG().replaceAll("\\p{Z}", ""));
            com.setUSER_ID(user.getId());
            com.setCOUNT(StringUtils.countMatches(com.getHASHTAG(), "#"));
        } else {
            com.setCOUNT(0);
        }

        if (!uploadFile.get(0).isEmpty()) {
            for (MultipartFile multipartFile : uploadFile) {
                UUID uuid = UUID.randomUUID();
                String uploadFileName = multipartFile.getOriginalFilename();
                String uploadFileUuid = uuid.toString() + "_" + uploadFileName;
                File saveFile = new File(root, uploadFileUuid);
                imagesDto img = new imagesDto();
                img.setFileName(path + uploadFileUuid);
                img.setFileId(uuid.toString());

                com.getImglists().add(img);
                try {
                    multipartFile.transferTo(saveFile);

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        service.updateContent(com);
        session.setAttribute("login", session.getAttribute("login"));
        if (referer.equals("http://localhost:8080/user/myWrite") || referer.equals("http://localhost:8080/user/likeContent")) {
            return "redirect:/user/myWrite";
        } else {
            return "redirect:/community/community";

        }
    }


    @GetMapping("padcast")
    public void padcast(HttpSession session) {
        session.setAttribute("login", session.getAttribute("login"));
    }


    @GetMapping("chart")
    public void chart(HttpSession session) {
        session.setAttribute("login", session.getAttribute("login"));
    }

    @PostMapping("autocomplete")
    @ResponseBody
    public String autocomplete(HttpSession session) {
        List<Stock> stockList = service.autocomplete();
        JSONArray jsonArray = JSONArray.fromObject(stockList);
        return jsonArray.toString();
    }


    @PostMapping("header")
    @ResponseBody
    public String header() {
        String URL = "https://finance.naver.com/sise/";
        Document doc;
        JsonArray infoArray = new JsonArray();
        List<String> sup1 = new ArrayList<String>();
        List<String> liup1 = new ArrayList<String>();
        String[] buf1 = null;
        String[] sup2 = null;
        List<String> sdown1 = new ArrayList<String>();
        List<String> lidown1 = new ArrayList<String>();
        String[] buf2 = null;
        String[] sdown2 = null;
        try {
            doc = Jsoup.connect(URL).get();
            List<Element> up1 = doc.select("#siselist_tab_0 tbody .tltle");
            Elements up2 = doc.select("#siselist_tab_0 tbody .number .tah");

            List<Element> down1 = doc.select("#siselist_tab_1 tbody .tltle");
            Elements down2 = doc.select("#siselist_tab_1 tbody .number .tah");
            String check = down1.toString();
            for (int i = 0; i < up1.size(); i++) {
                liup1.add(up1.get(i).attr("href").toString().substring(up1.get(i).attr("href").toString().lastIndexOf("=")).substring(1));
                log.info("upList" + liup1.get(i));
            }
            for (int i = 0; i < down1.size(); i++) {
                lidown1.add(down1.get(i).attr("href").toString().substring(down1.get(i).attr("href").toString().lastIndexOf("=")).substring(1));
                log.info("downList" + lidown1.get(i));
            }
            for (int i = 0; i < up1.size(); i++) {
                sup1.add(up1.get(i).text().toString());
            }
            for (int i = 0; i < down1.size(); i++) {

                sdown1.add(down1.get(i).text().toString());
            }

            buf1 = up2.text().split(" ");

            buf2 = down2.text().split(" ");

            //0 1 2 3 4 5
            sup2 = new String[buf1.length / 2];
            sdown2 = new String[buf2.length / 2];

            int odd = 0;
            for (int i = 0; i < buf1.length; i++) {
                if (i % 2 == 1) {
                    sup2[odd] = buf1[i];
                    odd++;
                }
            }
            odd = 0;
            for (int i = 0; i < buf2.length; i++) {
                if (i % 2 == 1) {
                    sdown2[odd] = buf2[i];
                    odd++;
                }
            }
            for (int i = 0; i < sup1.size(); i++) {
                JsonObject jsonobject = new JsonObject();
                jsonobject.addProperty("name", sup1.get(i));
                jsonobject.addProperty("per", sup2[i]);
                jsonobject.addProperty("h", liup1.get(i));
                infoArray.add(jsonobject);

            }
            if (!check.isEmpty()) {
                for (int i = 0; i < sdown1.size(); i++) {
                    JsonObject jsonobject = new JsonObject();
                    jsonobject.addProperty("name", sdown1.get(i));
                    jsonobject.addProperty("per", sdown2[i]);
                    jsonobject.addProperty("h", lidown1.get(i));

                    infoArray.add(jsonobject);

                }
            }
        } catch (Exception e) {

            e.printStackTrace();
        }
        return infoArray.toString();

    }


}
		
	
	
	


