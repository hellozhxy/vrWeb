package com.vr.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.vr.web.model.Menu;
import com.vr.web.model.Video;
import com.vr.web.service.MenuService;
import com.vr.web.service.VideoService;
import com.vr.web.vo.VideoVo;

/**
 * 按视频名称搜索、或者相关视频
 * @author xieyong
 */
@Controller
public class SearchController {
	
	private Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private VideoService videoService;

	@RequestMapping(value="/search")
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="k",required=false)String keyword){
		
		logger.info("...SearchController....keyword={}",keyword);
		
		List<Video> videos = videoService.search(keyword);
		logger.info("size={}",videos.size());
		
		List<Menu> menus = menuService.queryMenu();
		List<VideoVo> list1 = videoService.homepageVideos(Lists.newArrayList(1), 3);
		List<VideoVo> list2 = videoService.homepageVideos(Lists.newArrayList(2), 4);
		List<VideoVo> list3 = videoService.homepageVideos(Lists.newArrayList(3), 8);
		List<VideoVo> list4 = videoService.homepageVideos(Lists.newArrayList(4), 8);
		
		ModelAndView modelAndView = new ModelAndView("vr/history");
		
		modelAndView.addObject("menus", menus);
		modelAndView.addObject("list1", list1);
		modelAndView.addObject("list2", list2);
		modelAndView.addObject("list3", list3);
		modelAndView.addObject("list4", list4);
		
		modelAndView.addObject("list1Title", "动画世界");
		modelAndView.addObject("list2Title", "3D视频");
		modelAndView.addObject("list3Title", "全景视频");
		modelAndView.addObject("list4Title", "IMAX视频");
		
		modelAndView.addObject("videos", videos);
		return modelAndView;
	}
	
}
