package com.jeffrey.retalk.validator;

import com.jeffrey.retalk.entity.User;
import com.jeffrey.retalk.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/6/7.
 */
public class AuthRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;


    /**
     * 认证
     * @param authenticationToken
     * @return
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String userName = (String) authenticationToken.getPrincipal();
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        if ("".equals(userName)) {
            return  null;
        }
        User user = null;
        try {
            System.out.println(usernamePasswordToken.getPassword());
            user = userService.getUser(userName,new String(usernamePasswordToken.getPassword()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        String msg = null;
        if(user == null)
        {
            return null;
        }
        else
        {
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userName,usernamePasswordToken.getPassword(),this.getName());
            return info;
        }

    }


    /**
     * 授权
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String userName = (String) principalCollection.getPrimaryPrincipal();
        List<String> permissionList=new ArrayList<String>();
        permissionList.add("user:add");
        permissionList.add("user:delete");
        if (userName.equals("zhou")) {
            permissionList.add("user:query");
        }
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        info.addStringPermissions(permissionList);
        info.addRole("admin");
        return info;
    }
}
