package com.vr.web.model;

import java.util.Date;

import lombok.Data;

@Data
public class Video {
	
	private Long id;

    private Integer userId;

    private String title;

    private String description;

    private Integer status;

    private Integer categoryId;

    private Date publishTime;

    private String keywords;

    private String path;

    private Integer playTimes;

    private Integer permission;

    private Date createTime;

    private Date lastUpdateTime;

    private Long operatorUserId;
}