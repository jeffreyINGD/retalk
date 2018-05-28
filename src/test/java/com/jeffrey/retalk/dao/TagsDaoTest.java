package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.Article;
import com.jeffrey.retalk.entity.ArticleTagKey;
import com.jeffrey.retalk.entity.Tag;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/5/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class TagsDaoTest {
    @Autowired
    private TagMapper tagMapper;
    @Autowired
    private ArticleTagMapper articleTagMapper;
    @Autowired
    private ArticleMapper articleMapper;

    @Test
    public void queryAllTags()
    {
        List list = tagMapper.queryAll("");
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).toString());
        }
        System.out.println(list.size());
    }
    @Test
    public void addArticle()
    {
        Article article = new Article();
        article.setUserName("");
        article.setBody("junit测试 插入2");
        article.setTitle("这个是测试");
        article.setIsTop(1);
        article.setIsIndex(1);
        long id = articleMapper.insertSelective(article);

        List tags = new ArrayList();
        Tag tag = new Tag();
        tag.setUserName("");
        tag.setName("测试");
        Tag tag1 = new Tag();
        tag1.setUserName("");
        tag1.setName("junit");
        article.setTags(tags);
        tagMapper.insert(tag);
        tagMapper.insert(tag1);

        ArticleTagKey articleTagKey = new ArticleTagKey();
        articleTagKey.setArticleId(article.getId());
        articleTagKey.setTagId(tag1.getId());
        articleTagMapper.insert(articleTagKey);
        ArticleTagKey articleTagKey2 = new ArticleTagKey();
        articleTagKey2.setArticleId(article.getId());
        articleTagKey2.setTagId(tag.getId());
        articleTagMapper.insert(articleTagKey2);
    }
    @Test
    public void queryArticle()
    {
        List list = articleMapper.queryByUserName("",0,50);
        for (int i = 0; i < list.size(); i++) {
            Article article = (Article) list.get(i);
            List<Tag> tags = article.getTags();
            System.out.println(article.getTitle());
            for (Tag tag :tags)
            {

                System.out.println("标签："+ tag.getName());
            }
        }
        System.out.println(list.size());
    }
}
