package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.AdminUserRole;

public interface AdminUserRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AdminUserRole record);

    int insertSelective(AdminUserRole record);

    AdminUserRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AdminUserRole record);

    int updateByPrimaryKey(AdminUserRole record);
}