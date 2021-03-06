package com.stock.web.community.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Comments {

    private Long comment_id;

    private String USER_ID;

    private String writedate;

    private String comments;

    private Long bbs_id;
}
