package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

	/**
     * 根据手机号查询用户对象
     *
     * @param userPhone
     * @return
     */
    User queryByPhone(long userPhone);

    
    /**
     * 根据偏移量查询用户列表
     *
     * @param offset
     * @param limit
     * @return
     */
    List<User> queryAll(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据用户名查询用户
     * @param loginName
     * @return
     */
    User queryByLoginName(@Param("loginName") String loginName);


    User savaUser(User user);

    User updateUser(User user);
	
}
