package com.jeffrey.retalk.service.impl;

import com.jeffrey.retalk.dao.ArticleTagMapper;
import com.jeffrey.retalk.entity.ArticleTagKey;
import com.jeffrey.retalk.service.IArticleTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/5/17.
 */
@Service
public class ArticleTagServiceImpl implements IArticleTagService {
    @Autowired
    private ArticleTagMapper articleTagMapper;

    @Override
    public void insertArticleTag(ArticleTagKey articleTag) {
        articleTagMapper.insert(articleTag);
    }

    @Override
    public void deleteArticleTag(ArticleTagKey articleTag) {
        articleTagMapper.deleteByPrimaryKey(articleTag);
    }
}
