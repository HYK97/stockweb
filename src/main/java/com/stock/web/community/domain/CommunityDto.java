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
	private Long id;
	private Long userId;
	private String title;
	private String content;
	private Date writeDate;
	private String likeCount;
	private String hashTag;
}
