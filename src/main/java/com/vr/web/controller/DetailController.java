package com.vr.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vr.utils.CodecUtils;

/**
 * 详情
 * @author xieyong
 *
 */
@Controller
public class DetailController {
	
	private Logger logger = LoggerFactory.getLogger(DetailController.class);

	@RequestMapping(value="/detail")
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value="vid",required=true)String codedVid){
		Long vid = CodecUtils.decodeToLong(codedVid);
		if(vid == null){
			logger.error("...视频ID解析失败..");
			//TOOD 跳转到失败
		}
		logger.info("...detail....vid={} decode={}",vid,vid);
		return new ModelAndView("vr/single");
	}
	
}
