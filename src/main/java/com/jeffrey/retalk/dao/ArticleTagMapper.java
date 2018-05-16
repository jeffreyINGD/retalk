package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.ArticleTagKey;

public interface ArticleTagMapper {
    int deleteByPrimaryKey(ArticleTagKey key);

    int insert(ArticleTagKey record);

    int insertSelective(ArticleTagKey record);
}