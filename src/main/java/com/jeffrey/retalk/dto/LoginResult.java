package com.jeffrey.retalk.dto;

import com.jeffrey.retalk.entity.User;

/**
 * Created by Administrator on 2018/5/3.
 */
public class LoginResult extends BaseResult{
    private User user;
    public LoginResult(boolean success, String error) {
        super(success, error);
    }
    public LoginResult(boolean success, String error,User user) {
        super(success, error);
        this.user = user;
    }

    public LoginResult() {
        super();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
