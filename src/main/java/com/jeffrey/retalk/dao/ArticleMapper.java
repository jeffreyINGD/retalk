package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.dto.ArchiveGroup;
import com.jeffrey.retalk.entity.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {

    int deleteByPrimaryKey(Long id);

    Long insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);

    long countByUserName(String userName);

    List<Article> queryByUserName(@Param("userName")String userName, @Param("offset") int offset, @Param("limit") int limit);

    List queryIndexByUserName(@Param("userName")String userName,@Param("offset") int offset, @Param("limit") int limit);

    List<ArchiveGroup> groupByYearMonth(@Param("userName") String userName);

    List<Article> getArticlesByYearsMonth(@Param("userName")String userName,@Param("yearMonth")String yearMonth);
}