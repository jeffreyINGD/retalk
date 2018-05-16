package com.jeffrey.retalk.entity;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.jeffrey.retalk.util.CustomDateSerializer;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class AdminMenu {
    private Integer menuId;

    private Integer parentId;

    private String name;

    private String url;

    private String image;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonSerialize(using=CustomDateSerializer.class)
    private Date createTime;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonSerialize(using=CustomDateSerializer.class)
    private Integer modifyedTime;

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getModifyedTime() {
        return modifyedTime;
    }

    public void setModifyedTime(Integer modifyedTime) {
        this.modifyedTime = modifyedTime;
    }
}