package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.AdminRole;

public interface AdminRoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(AdminRole record);

    int insertSelective(AdminRole record);

    AdminRole selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(AdminRole record);

    int updateByPrimaryKey(AdminRole record);
}