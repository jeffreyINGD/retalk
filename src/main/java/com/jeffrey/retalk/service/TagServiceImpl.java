package com.jeffrey.retalk.service;

import com.jeffrey.retalk.dao.TagMapper;
import com.jeffrey.retalk.entity.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
@Service
public class TagServiceImpl implements ITagService {

    @Autowired
    private TagMapper tagMapper;
    @Override
    public List<Tag> getAllTags(String name) {
        return tagMapper.queryAll(name);
    }

    @Override
    public Tag getTagByName(String tagName, String userName) {
        return tagMapper.queryByTagNameAndUserName(tagName,userName);
    }

    @Override
    public Tag getTagById(long tagId) {
        return tagMapper.selectByPrimaryKey(tagId);
    }

    @Override
    public void insertTag(Tag tag) {
        tagMapper.insert(tag);
    }

    @Override
    public void deleteTagById(long tagId) {
        tagMapper.deleteByPrimaryKey(tagId);
    }
}
