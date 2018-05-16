package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.AdminMenu;

import java.util.List;

public interface AdminMenuMapper {
    int deleteByPrimaryKey(Integer menuId);

    int insert(AdminMenu record);

    int insertSelective(AdminMenu record);

    AdminMenu selectByPrimaryKey(Integer menuId);

    int updateByPrimaryKeySelective(AdminMenu record);

    int updateByPrimaryKey(AdminMenu record);

    List<AdminMenu> selectByUserId(Integer menuId);
}