package com.jeffrey.retalk.web;

import com.jeffrey.retalk.entity.Article;
import com.jeffrey.retalk.service.IArticleService;
import com.jeffrey.retalk.service.MenuMangeService;
import com.jeffrey.retalk.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
@Controller
public class IndexController {
    @Autowired
    private IArticleService articleService;
    @Autowired
    private UserService userService;
    @Autowired
    private MenuMangeService menuMangeService;

    @GetMapping("/")
    public String index(ModelMap modelMap,
                        HttpSession session) {

        List menus  = menuMangeService.getMenusByUserId(12);
        /*User user = (User)session.getAttribute("login");
        if(loginName !=null )
        {
            long articlesCount = articleService.getArticlesCount("");
        }*/
        long articlesCount = articleService.getArticlesCount("");
        List<Article> articles = articleService.getArticlesOfOnePage("", 0,15);
        modelMap.addAttribute("articles", articles);
        modelMap.addAttribute("menus", menus);
        modelMap.addAttribute("articlesCount", articlesCount);
        modelMap.addAttribute("isIndex", true);

        return "index";
    }


}
