package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.AdminRoleMenu;

public interface AdminRoleMenuMapper {
    int insert(AdminRoleMenu record);

    int insertSelective(AdminRoleMenu record);
}