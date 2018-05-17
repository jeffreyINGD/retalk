package com.jeffrey.retalk.service;

import com.jeffrey.retalk.entity.ArticleTagKey;

/**
 * Created by Administrator on 2018/5/17.
 */
public interface IArticleTagService {
    void insertArticleTag(ArticleTagKey articleTag);

    void deleteArticleTag(ArticleTagKey articleTag);
}
