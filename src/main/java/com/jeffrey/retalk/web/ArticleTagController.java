package com.jeffrey.retalk.web;


import com.jeffrey.retalk.entity.ArticleTagKey;
import com.jeffrey.retalk.service.IArticleTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ArticleTagController {
    @Autowired
    private IArticleTagService articleTagService;


    public ArticleTagController(IArticleTagService articleTagService) {
        this.articleTagService = articleTagService;
    }

    @ResponseBody
    @PostMapping("/articleTag/new")
    public ArticleTagKey newArticleTag(@RequestBody ArticleTagKey articleTag) {
        articleTagService.insertArticleTag(articleTag);

        return articleTag;

    }

    @ResponseBody
    @PostMapping("/articleTag/delete")
    public ArticleTagKey deleteArticleTag(@RequestBody ArticleTagKey articleTag) {
        articleTagService.deleteArticleTag(articleTag);

        return articleTag;
    }

}
