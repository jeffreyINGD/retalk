package com.jeffrey.retalk.web;

import com.jeffrey.retalk.entity.Article;
import com.jeffrey.retalk.entity.Tag;
import com.jeffrey.retalk.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;


@Controller
public class ArticleController {
    @Autowired
    private IArticleService articleService;


    public ArticleController(IArticleService articleService) {
        this.articleService = articleService;
    }

    @GetMapping("/article")
    public String index(ModelMap modelMap, Principal principal) {
        long articlesCount = articleService.getArticlesCount("");

        List<Article> articles = articleService.getArticlesOfOnePage("", 1,15);

        modelMap.addAttribute("articles", articles);
        modelMap.addAttribute("articlesCount", articlesCount);
        modelMap.addAttribute("isIndex", true);

        return "article/index";
    }

    @PostMapping(value = "/article/add",consumes = MediaType.APPLICATION_JSON_UTF8_VALUE,
            produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public String newArticle(@RequestBody Article article) {
        long id = articleService.insertArticle(article);
        return id+"";
    }

    @GetMapping("/article/new")
    public Article newArticlePage(ModelMap modelMap,Article article) {

        modelMap.addAttribute("article", article);

        return article;
    }

    @GetMapping(value = "/article/{articleId}")
    public String getArticle(@PathVariable long articleId, ModelMap modelMap, Principal principal) {
        Article article = articleService.getArticleById(articleId, "");

        modelMap.addAttribute("article", article);

        return "article/display";
    }

    @GetMapping(value = "/article/modify/{articleId}")
    public String updateArticle(@PathVariable long articleId, ModelMap modelMap, Principal principal) {
        Article article = articleService.getArticleById(articleId, "");
        List<Tag> tags = articleService.getAllTagsOfOneArticle(articleId);

        modelMap.addAttribute("article", article);
        modelMap.addAttribute("tags", tags);

        return "article/modify";
    }

    @PostMapping(value = "/page/{page}")
    @ResponseBody
    public List<Article> pagination(@PathVariable int page, Principal principal) {
        return articleService.getArticlesOfOnePage("", page,15);
    }

    @PostMapping(value = "/article/new")
    @ResponseBody
    public long insertArticle(Principal principal) {
        Article article = new Article();
        article.setUserName((principal.getName()));
        return articleService.insertArticle(article);
    }

    @PostMapping(value = "/article/delete/{articleId}")
    public String deleteArticle(@PathVariable long articleId, Principal principal) {
        articleService.deleteArticleById(articleId, "");

        return "redirect:/";
    }

    @ResponseBody
    @PostMapping(value = "/article/update")
    public Article updateArticle(@ModelAttribute Article article, Principal principal) {
        int page = articleService.getArticlePage("", article.getId());
        articleService.updateArticle(article, "", page);

        return article;
    }

}