package com.jeffrey.retalk.web.admin;

import com.jeffrey.retalk.service.MenuMangeService;
import com.jeffrey.retalk.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2018/6/5.
 */
@RestController
@RequestMapping(value = "/admin/")
public class IndexController {
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;
    @Autowired
    private MenuMangeService menuMangeService;

    @RequestMapping(value = "/menu/list/{userId}")
    public List menulist(@PathVariable(value = "userId") Integer userId){
        List menus = null;
        menus = menuMangeService.getMenusByUserId(userId);
        return menus;
    }

}
