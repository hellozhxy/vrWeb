package com.vr.web.vo;

import java.util.Date;

import lombok.Data;


@Data
public class VideoVo{

	private String sid;

    private Integer userId;

    private String title;

    private String description;

    private Integer status;

    private Integer categoryId;

    private Date publishTime;

    private String keywords;

    private String path;

    private Integer playTimes;
	
}
