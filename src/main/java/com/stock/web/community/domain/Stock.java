package com.stock.web.community.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
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
