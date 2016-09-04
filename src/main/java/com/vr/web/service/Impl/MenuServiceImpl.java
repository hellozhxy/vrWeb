package com.vr.web.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.web.dao.MenuMapper;
import com.vr.web.model.Menu;
import com.vr.web.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService{
	
	Logger logger = LoggerFactory.getLogger(MenuServiceImpl.class);

	@Autowired
	private MenuMapper menuDao;

//	public String sayHello() {
//		return "hello world." + menuDao.getCount();
//	}

	@Override
	public List<Menu> queryMenu() {
		return menuDao.queryMenu();
	}
	
	
}
