package com.vr.web.service.Impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.vr.web.dao.VideoMapper;
import com.vr.web.model.Video;
import com.vr.web.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService{
	
	Logger logger = LoggerFactory.getLogger(VideoServiceImpl.class);

	@Autowired
	private VideoMapper videoDao;

	@Override
	public List<Video> homepageVideos(List<Integer> categorys, int limitCount) {
		return videoDao.queryByCategorys(categorys,limitCount);
	}

	@Override
	public Video detail(Long vid) {
		return videoDao.detail(vid);
	}

	@Override
	public List<Video> search(String keyword) {
		if(StringUtils.isBlank(keyword)){
			return Lists.newArrayList();
		}
		return videoDao.search(keyword);
	}
	
}
