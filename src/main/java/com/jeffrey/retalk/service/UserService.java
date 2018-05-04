package com.jeffrey.retalk.service;

import com.jeffrey.retalk.entity.User;

import java.security.NoSuchAlgorithmException;
import java.util.List;

public interface UserService {

	List<User> getUserList(int offset, int limit);
	User getUser(String loginName,String password) throws NoSuchAlgorithmException;

	 
}
