package com.stock.web.community.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class imagesDto {
	private String fileName;
	private String fileId;
	private Long bbs_id;

}
