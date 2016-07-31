package com.vr.web.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vr.web.service.Impl.ExampleServiceImpl;

@RequestMapping("example")
@Controller
public class ExampleController {

	@Resource
	private ExampleServiceImpl esxampleService;
	Logger logger = LoggerFactory.getLogger(ExampleController.class);
	
	@RequestMapping("hello")
	@ResponseBody
	public String hello(){
		return esxampleService.sayHello();
	}
}
