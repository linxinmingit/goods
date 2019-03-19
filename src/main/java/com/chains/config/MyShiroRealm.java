package com.chains.config;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.chains.model.SysEmployee;
import com.chains.service.ISysEmployeeService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class MyShiroRealm extends AuthorizingRealm {

    @Autowired
    private ISysEmployeeService sysEmployeeService;

    /**
     * 身份认证---登录
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //1、 获取用户输入的账号.
        String username = (String)token.getPrincipal();
        //2、通过username从数据库获取用户信息
        QueryWrapper<SysEmployee> wrapper = new QueryWrapper<>();
        wrapper.eq("login_name", username);
        SysEmployee sysEmployee = sysEmployeeService.getOne(wrapper);
        if(null == sysEmployee) {//用户不存在
            return null;
        }
        //3、加密. 使用SimpleAuthenticationInfo 进行身份处理.
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(sysEmployee, sysEmployee.getPassword(), ByteSource.Util.bytes(sysEmployee.getLoginName()), getName());

        return simpleAuthenticationInfo;
    }

    /**
     * 权限认证
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("1111111111111111111111111111112222222222222222222222222222222");
        return null;
    }

}
