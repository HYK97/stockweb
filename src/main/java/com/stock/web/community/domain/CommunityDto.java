package com.stock.web.community.domain;

import java.util.Date;
import java.util.List;

import com.stock.web.user.domain.UserDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;



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
	
}
