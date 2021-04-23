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
public class Stock {

	private String code;
	private String long_name;
	private String short_name;
	private String eng_name;

}
