package com.jeffrey.retalk.service;

import com.jeffrey.retalk.entity.Tag;

import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
public interface ITagService {

    List<Tag> getAllTags(String name);

    Tag getTagByName(String tagName, String name);

    Tag getTagById(long tagId);

    void insertTag(Tag tag);

    void deleteTagById(long tagId);
}
