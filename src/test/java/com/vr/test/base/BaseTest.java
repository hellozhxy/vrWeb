package com.vr.test.base;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/spring/applicationContext-common.xml" })
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false)  
@Transactional
public abstract class BaseTest {

	@Autowired
	protected JdbcTemplate jdbcTemplate;
	
	protected void sql(String sql){
		jdbcTemplate.execute(sql);
	}
	
}