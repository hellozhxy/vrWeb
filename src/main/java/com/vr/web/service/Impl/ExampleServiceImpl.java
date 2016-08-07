package com.vr.web.service.Impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.web.dao.ExampleMapper;
import com.vr.web.service.ExampleService;

@Service
public class ExampleServiceImpl implements ExampleService{

	@Autowired
	private ExampleMapper exampleDao;
	Logger logger = LoggerFactory.getLogger(ExampleServiceImpl.class);

	public String sayHello() {
		return "hello world." + exampleDao.getCount();
	}
	
	
}
