package com.jeffrey.retalk.web;

import com.jeffrey.retalk.dto.LoginResult;
import com.jeffrey.retalk.entity.User;
import com.jeffrey.retalk.enums.ResultEnum;
import com.jeffrey.retalk.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Administrator on 2018/5/3.
 */
@RestController
@RequestMapping(value = "/api")
public class LoginController {

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    public LoginResult login(@RequestParam(value = "account") String account,
                             @RequestParam(value = "password") String password, HttpServletRequest request){
        LoginResult result = new LoginResult();
        try {
            User user = userService.getUser(account,password);
            String msg = null;
            if(user == null)
            {
                msg = ResultEnum.LOGIN_ERROR.getMsg();
            }
            else
            {
                msg = "登录成功";
            }
            result = new LoginResult(user != null,msg,user);
            request.getSession().setAttribute("login",user);
        } catch (NoSuchAlgorithmException e) {
            result = new LoginResult(false, ResultEnum.INNER_ERROR.getMsg(),null);
        }
        return result;
    }

}
