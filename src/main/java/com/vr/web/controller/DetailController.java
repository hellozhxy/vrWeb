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
import com.vr.utils.CodecUtils;
import com.vr.web.model.Menu;
import com.vr.web.model.Video;
import com.vr.web.service.MenuService;
import com.vr.web.service.VideoService;

/**
 * 详情
 * @author xieyong
 *
 */
@Controller
public class DetailController {
	
	private Logger logger = LoggerFactory.getLogger(DetailController.class);
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private VideoService videoService;

	@RequestMapping(value="/detail")
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="vid",required=true)String codedVid){
		Long vid = CodecUtils.decodeToLong(codedVid);
		if(vid == null){
			logger.error("...视频ID解析失败..");
			//TOOD 跳转到失败
		}
		logger.info("...detail....vid={} decode={}",vid,vid);
		
		List<Menu> menus = menuService.queryMenu();
		List<Video> list1 = videoService.homepageVideos(Lists.newArrayList(1), 3);
		List<Video> list2 = videoService.homepageVideos(Lists.newArrayList(2), 4);
		List<Video> list3 = videoService.homepageVideos(Lists.newArrayList(3), 8);
		List<Video> list4 = videoService.homepageVideos(Lists.newArrayList(4), 8);
		
		ModelAndView modelAndView = new ModelAndView("vr/single");
		
		modelAndView.addObject("menus", menus);
		modelAndView.addObject("list1", list1);
		modelAndView.addObject("list2", list2);
		modelAndView.addObject("list3", list3);
		modelAndView.addObject("list4", list4);
		
		modelAndView.addObject("list1Title", "动画世界");
		modelAndView.addObject("list2Title", "3D视频");
		modelAndView.addObject("list3Title", "全景视频");
		modelAndView.addObject("list4Title", "IMAX视频");
		
		return modelAndView;
	}
	
}
