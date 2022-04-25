package com.stock.web.community.domain;

import com.stock.web.user.domain.UserDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CommunityDto {
    private Long ID;

    private String USER_ID;

    private String CONTENT;

    private String WRITEDATE;

    private String LIKECOUNT;

    private String HASHTAG;

    private int commentcount;

    private int user_like;

    private int COUNT;

    private List<UserDto> Like;

    private List<HashTag> HASHTAGLIST;

    private List<String> imglist;

    private List<imagesDto> imglists;

    private String img;

}
