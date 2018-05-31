package com.jeffrey.retalk.dto;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/5/31.
 */
public class ArchiveGroup implements Serializable {
    private String time;
    private Integer count;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

}
