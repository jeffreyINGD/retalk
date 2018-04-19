package com.jeffrey.retalk.service;

import com.jeffrey.retalk.entity.User;

import java.util.List;

public interface UserService {

	List<User> getUserList(int offset, int limit);
	 
}
