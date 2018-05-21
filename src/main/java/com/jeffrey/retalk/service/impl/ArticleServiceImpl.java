package com.jeffrey.retalk.service.impl;

import com.jeffrey.retalk.dao.ArticleMapper;
import com.jeffrey.retalk.entity.Article;
import com.jeffrey.retalk.entity.Tag;
import com.jeffrey.retalk.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
@Service
public class ArticleServiceImpl implements IArticleService {
    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public long getArticlesCount(String loginName) {
        return articleMapper.countByUserName(loginName);
    }

    @Override
    public List getArticlesOfOnePage(String loginName, int pageNo,int pageSize) {
        return articleMapper.queryByUserName(loginName,pageNo,pageSize);
    }

    @Override
    public Article getArticleById(long articleId, String userName) {
        return articleMapper.selectByPrimaryKey(articleId);
    }

    @Override
    public List<Tag> getAllTagsOfOneArticle(long articleId) {
        return null;
    }

    @Override
    public long insertArticle(Article article) {
        return articleMapper.insert(article);
    }

    @Override
    public void deleteArticleById(long articleId) {
        articleMapper.deleteByPrimaryKey(articleId);
    }

    @Override
    public int getArticlePage(String name, Long id) {
        return 0;
    }

    @Override
    public void updateArticle(Article article) {
        articleMapper.updateByPrimaryKeySelective(article);
    }
}
