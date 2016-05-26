package com.zhiyi.service.impl;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zhiyi.entity.Admin;
import com.zhiyi.service.AdminService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceImplTest {
	@Autowired
	private AdminService adminService;
	
	@Test
	public void test() {

		List<Admin> subjects=adminService.find("1","10");
		int result=adminService.getTotal();
		System.out.println(subjects);
		System.out.println(result);
		assertNotNull(subjects);

	}

}
