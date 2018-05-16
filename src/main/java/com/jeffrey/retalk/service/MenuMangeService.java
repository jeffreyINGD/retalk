package com.jeffrey.retalk.service;

import com.jeffrey.retalk.entity.AdminMenu;

import java.util.List;

/**
 * Created by Administrator on 2018/6/5.
 */
public interface MenuMangeService {
    List<AdminMenu> getMenusByUserId(Integer userId);
    AdminMenu saveMenu(AdminMenu adminMenu);
    void deleteMenu(AdminMenu adminMenu);
}
