package com.vr.web.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;
import com.vr.utils.CodecUtils;
import com.vr.web.dao.VideoMapper;
import com.vr.web.model.Video;
import com.vr.web.service.VideoService;
import com.vr.web.vo.VideoVo;

@Service
public class VideoServiceImpl implements VideoService{
	
	Logger logger = LoggerFactory.getLogger(VideoServiceImpl.class);

	@Autowired
	private VideoMapper videoDao;

	@Override
	public List<VideoVo> homepageVideos(List<Integer> categorys, int limitCount) {
		List<Video> list = videoDao.queryByCategorys(categorys,limitCount);
		if(CollectionUtils.isEmpty(list)){
			return new ArrayList<VideoVo>();
		}
		
		List<VideoVo> result = Lists.newArrayList();
		for(Video v : list){
			VideoVo vo = new VideoVo();
			vo.setCategoryId(v.getCategoryId());
			vo.setDescription(v.getDescription());
			vo.setKeywords(v.getKeywords());
			vo.setPlayTimes(v.getPlayTimes());
			vo.setSid(CodecUtils.encode(String.valueOf(v.getId())));
			vo.setTitle(v.getTitle());
			result.add(vo);
		}
		return result;
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
