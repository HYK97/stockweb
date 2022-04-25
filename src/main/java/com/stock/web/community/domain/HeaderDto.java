package com.stock.web.community.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class HeaderDto {

    private String id;

    private String name;

    private String password;

    private String birthday;
}
