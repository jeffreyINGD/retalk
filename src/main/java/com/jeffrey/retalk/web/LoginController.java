package com.jeffrey.retalk.web;

import com.jeffrey.retalk.dto.LoginResult;
import com.jeffrey.retalk.entity.User;
import com.jeffrey.retalk.enums.ResultEnum;
import com.jeffrey.retalk.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Administrator on 2018/5/3.
 */
@RestController
public class LoginController {

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/api/login",method = RequestMethod.POST)
    public ModelAndView login(@RequestParam(value = "username") String account,
                              @RequestParam(value = "password") String password, ModelAndView modelAndView,
                              HttpServletRequest request){
        LoginResult result = new LoginResult();
        try {
            Subject subject = SecurityUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(account, password);
            try {
                subject.login(token);
            } catch (UnknownAccountException e) {
                e.printStackTrace();
                //model.addAttribute("userName", "用户名错误！");
                result = new LoginResult(false, ResultEnum.LOGIN_ERROR.getMsg(),null);
            } catch (IncorrectCredentialsException e) {
                e.printStackTrace();
                //model.addAttribute("passwd", "密码错误");
                result = new LoginResult(false, ResultEnum.LOGIN_ERROR.getMsg(),null);
            }
            User user = userService.getUser(account,password);
            String msg = null;
            if(user == null)
            {
                return new ModelAndView("login");
            }
            else
            {
                //msg = "登录成功";
                return new ModelAndView("index");
            }

        } catch (NoSuchAlgorithmException e) {
            return new ModelAndView("login");
        }
    }

}
