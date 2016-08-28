package com.vr.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigatorController {
	
	private Logger logger = LoggerFactory.getLogger(NavigatorController.class);

	@RequestMapping(value="/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
		logger.info("...index....");
		return new ModelAndView("vr/index");
	}
	
	@RequestMapping(value="/detail")
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response){
		logger.info("...detail....");
		return new ModelAndView("vr/single");
	}
	
	@RequestMapping(value="/history")
	public ModelAndView history(HttpServletRequest request, HttpServletResponse response){
		logger.info("...detail....");
		return new ModelAndView("vr/history");
	}
	
}
