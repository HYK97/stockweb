package com.stock.web.community.service;

import com.stock.web.community.domain.Comments;
import com.stock.web.community.domain.CommunityDto;
import com.stock.web.community.domain.Stock;
import com.stock.web.user.domain.UserDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommunityService {

    public List<Stock> autocomplete();

    public void write(CommunityDto com);

    public List<CommunityDto> searchList(int fpage, int epage, String user, String search);

    public List<CommunityDto> getList(int fpage, int epage, String user);

    public String likePush(UserDto user, CommunityDto bid);

    public CommunityDto selectContent(Long bid, String user);

    public List<Comments> commentsList(int fpage, int epage, Long bid);

    public void writeComment(Comments com);

    public List<CommunityDto> myContentList(@Param("fpage") int fpage, @Param("epage") int epage, @Param("user") String user);

    public List<CommunityDto> likeContent(@Param("fpage") int fpage, @Param("epage") int epage, @Param("user") String user);

    public int deleteContent(Long ID);

    public int deleteComment(Comments com);

    public int modifyComment(Comments com);

    public void updateContent(CommunityDto com);
}