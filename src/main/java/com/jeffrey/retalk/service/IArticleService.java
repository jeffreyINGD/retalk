package com.jeffrey.retalk.service;

import com.jeffrey.retalk.entity.Article;
import com.jeffrey.retalk.entity.Tag;

import java.util.List;

/**
 * Created by Administrator on 2018/5/16.
 */
public interface IArticleService {
    long getArticlesCount(String loginName);
    List getArticlesOfOnePage(String loginName,int pageNo,int pageSize);

    Article getArticleById(long articleId, String name);

    List<Tag> getAllTagsOfOneArticle(long articleId);

    long insertArticle(Article article);

    void deleteArticleById(long articleId);

    int getArticlePage(String name, Long id);

    void updateArticle(Article article);
}
