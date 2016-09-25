package com.vr.web.service;

import java.util.List;

import com.vr.web.model.Video;

public interface VideoService {

	/**
	 * 根据查询分类下的视频
	 * @param categorys
	 * @return
	 */
	List<Video> homepageVideos(List<Integer> categorys, int limitCount);
	
	/**
	 * 视频详情
	 * @param vid
	 * @return
	 */
	Video detail(Long vid);


}
