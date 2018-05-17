package com.jeffrey.retalk.dao;

import com.jeffrey.retalk.entity.Tag;

import java.util.List;

public interface TagMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Tag record);

    int insertSelective(Tag record);

    Tag selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);


    List<Tag> queryAll(String userName);

    Tag queryByTagNameAndUserName(String tagName, String userName);
}