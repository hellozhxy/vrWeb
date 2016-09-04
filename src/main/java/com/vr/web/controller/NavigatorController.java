package com.vr.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.vr.web.model.Menu;
import com.vr.web.service.MenuService;

/**
 * 
 * 主页
 * @author xieyong
 *
 */
@Controller
public class NavigatorController {
	
	private Logger logger = LoggerFactory.getLogger(NavigatorController.class);
	
	@Autowired
	private MenuService menuService;

	@RequestMapping(value="/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
		
		logger.info("...index....");
//		List<Menu> menus = menuService.queryMenu();
		List<Menu> menus = Lists.newArrayList();
		Menu m1 = new Menu();
		m1.setHerf("index.do");
		m1.setName("蜂群在线");
		menus.add(m1);
		ModelAndView modelAndView = new ModelAndView("vr/index");
		modelAndView.addObject("menus", menus);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/history")
	public ModelAndView history(HttpServletRequest request, HttpServletResponse response){
		logger.info("...NavigatorController....");
		return new ModelAndView("vr/history");
	}
	
}
