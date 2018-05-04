package com.jeffrey.retalk.dao;


import java.util.List;


import com.jeffrey.retalk.dao.UserDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jeffrey.retalk.entity.User;

/**
 * 
 * @author jeffrey
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class UserDaoTest {

    @Autowired
    private UserDao userDao;
	
	@Test
	public void testQueryById() {
		User user=userDao.queryByPhone(18768128888L);
		System.out.println(user);
		System.out.println("--------------------------");
	}

	@Test
	public void testQueryAll() {
		List<User> list=userDao.queryAll(0, 100);
		for (User user : list) {
			System.out.println(user);
		}
	}
	
	@Test
	public void testAddScore() {
		List<User> list=userDao.queryAll(0, 100);
		for (User user : list) {
			System.out.println(user);
		}
	}

}
