package com.jeffrey.retalk.service.impl;

import com.jeffrey.retalk.cache.RedisCache;
import com.jeffrey.retalk.dao.AdminMenuMapper;
import com.jeffrey.retalk.dao.UserDao;
import com.jeffrey.retalk.entity.AdminMenu;
import com.jeffrey.retalk.service.MenuMangeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/6/5.
 */

@Service
public class MenuMangerServiceImpl implements MenuMangeService {
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserDao userDao;
    @Autowired
    private RedisCache cache;
    @Autowired
    private AdminMenuMapper menuMapper;
    @Override
    public List<AdminMenu> getMenusByUserId(Integer userId) {
        return menuMapper.selectByUserId(userId);
    }

    @Override
    public AdminMenu saveMenu(AdminMenu adminMenu) {
        return null;
    }

    @Override
    public void deleteMenu(AdminMenu adminMenu) {

    }
}
