package com.vr.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 按视频名称搜索、或者相关视频
 * @author xieyong
 */
@Controller
public class SearchController {
	
	private Logger logger = LoggerFactory.getLogger(SearchController.class);

	@RequestMapping(value="/search")
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="keyword",required=false)String keyword){
		logger.info("...detail....keyword={}",keyword);
		return new ModelAndView("vr/single");
	}
	
}
