package com.vr.web.service;

import java.util.List;

import com.vr.web.model.Video;
import com.vr.web.vo.VideoVo;

public interface VideoService {

	/**
	 * 根据查询分类下的视频
	 * @param categorys
	 * @return
	 */
	List<VideoVo> homepageVideos(List<Integer> categorys, int limitCount);
	
	/**
	 * 视频详情
	 * @param vid
	 * @return
	 */
	Video detail(Long vid);

	/**
	 * 视频搜索
	 * @param keyword
	 * @return
	 */
	List<Video> search(String keyword);

}
