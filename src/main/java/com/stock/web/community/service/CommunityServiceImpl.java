package com.stock.web.community.service;


import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.community.mapper.CommunityMapper;
import com.stock.web.user.domain.UserDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j
@RequiredArgsConstructor
public class CommunityServiceImpl implements CommunityService {

    private final CommunityMapper mapper;

    @Override
    public List<Stock> autocomplete() {
        // TODO Auto-generated method stub
        return mapper.autocomplete();
    }

    @Override
    public void write(CommunityDto com) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("v_user_id", com.getUSER_ID());
        map.put("v_content", com.getCONTENT());
        map.put("v_hash_title", com.getHASHTAG());
        map.put("v_hash_count", com.getCOUNT());
        map.put("v_bbs_id", "");
        mapper.insert(map);
        if (!com.getImglists().isEmpty()) {
            log.info(com.getImglists().toString());
            Map<String, Object> map2 = new HashMap<String, Object>();
            map2.put("list", com.getImglists());
            map2.put("bbs_id", map.get("v_bbs_id"));
            mapper.insertImage(map2);
        }
    }

    @Override
    public List<CommunityDto> getList(int fpage, int epage, String user) {
        // TODO Auto-generated method stub
        List<CommunityDto> list = mapper.selectList(fpage, epage, user);

        for (CommunityDto communityDto : list) {
            if (!communityDto.getImg().equals("0")) {
                List<String> a = Arrays.asList(communityDto.getImg().split("\\|"));
                communityDto.setImglist(a);

            }
        }

        return list;
    }

    @Override
    public String likePush(UserDto user, CommunityDto bid) {
        // TODO Auto-generated method stub
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("v_user_id", user.getId());
        map.put("v_bbs_id", bid.getID());
        map.put("v_result", "");

        mapper.likePush(map);
        log.info("�°� ------" + map.get("v_result2"));
        return (String) map.get("v_result2");
    }

    @Override
    public CommunityDto selectContent(Long bid, String user) {
        log.info("�Խ���" + bid + "������" + user);
        // TODO Auto-generated method stub
        return mapper.selectContent(bid, user);
    }

    @Override
    public List<Comments> commentsList(int fpage, int epage, Long bid) {
        // TODO Auto-generated method stub
        return mapper.commentsList(fpage, epage, bid);
    }

    @Override
    public void writeComment(Comments com) {
        mapper.writeComment(com);

    }

    @Override
    public List<CommunityDto> searchList(int fpage, int epage, String user, String search) {
        // TODO Auto-generated method stub
        List<CommunityDto> list = mapper.searchList(fpage, epage, user, search);

        for (CommunityDto communityDto : list) {
            if (!communityDto.getImg().equals("0")) {
                List<String> a = Arrays.asList(communityDto.getImg().split("\\|"));
                communityDto.setImglist(a);

            }
        }

        return list;
    }

    @Override
    public List<CommunityDto> myContentList(int fpage, int epage, String user) {
        // TODO Auto-generated method stub
        List<CommunityDto> list = mapper.myContentList(fpage, epage, user);

        for (CommunityDto communityDto : list) {
            if (!communityDto.getImg().equals("0")) {
                List<String> a = Arrays.asList(communityDto.getImg().split("\\|"));
                communityDto.setImglist(a);

            }
        }

        return list;

    }

    @Override
    public List<CommunityDto> likeContent(int fpage, int epage, String user) {
        // TODO Auto-generated method stub
        List<CommunityDto> list = mapper.likeContent(fpage, epage, user);

        for (CommunityDto communityDto : list) {
            if (!communityDto.getImg().equals("0")) {
                List<String> a = Arrays.asList(communityDto.getImg().split("\\|"));
                communityDto.setImglist(a);

            }
        }
        return list;
    }

    @Override
    public int deleteContent(Long ID) {
        // TODO Auto-generated method stub
        return mapper.deleteContent(ID);
    }

    @Override
    public int deleteComment(Comments com) {
        // TODO Auto-generated method stub
        return mapper.deleteComment(com);
    }

    @Override
    public int modifyComment(Comments com) {
        // TODO Auto-generated method stub
        return mapper.updateComment(com);

    }

    @Override
    public void updateContent(CommunityDto com) {
        log.info("������ Ȯ�� ---------------------" + com.toString());
        // TODO Auto-generated method stub
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("v_user_id", com.getUSER_ID());
        map.put("v_content", com.getCONTENT());
        map.put("v_hash_title", com.getHASHTAG());
        map.put("v_hash_count", com.getCOUNT());
        map.put("v_bbs_id", com.getID());
        mapper.updateContent(map);
        if (!com.getImglists().isEmpty()) {
            log.info(com.getImglists().toString());
            Map<String, Object> map2 = new HashMap<String, Object>();
            map2.put("list", com.getImglists());
            map2.put("bbs_id", map.get("v_bbs_id"));
            mapper.insertImage(map2);
        }

    }


}
