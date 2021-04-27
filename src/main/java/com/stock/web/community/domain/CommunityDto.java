package com.stock.web.community.domain;

import java.util.Date;

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
	private int COUNT;
	
}
