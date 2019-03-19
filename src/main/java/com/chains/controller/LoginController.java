package com.chains.controller;

import com.chains.model.SysEmployee;
import com.chains.vo.SimpleMsgVO;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 登录 前端控制器
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@RestController
public class LoginController {

    /**
     * 进行登录验证
     * @param username
     * @param password
     * @return
     */
    @RequestMapping("/login")
    public Object login(String username, String password, @RequestParam(value = "rememberMe", required = false) boolean rememberMe, HttpSession session){
        try {
            AuthenticationToken token = new UsernamePasswordToken(username, password, rememberMe);
            Subject subject = SecurityUtils.getSubject();
            subject.login(token);

            /**
             * 将登录信息存进session中
             */
            SysEmployee sysEmployee=(SysEmployee) subject.getPrincipal();
            session.setAttribute("user", sysEmployee);
        } catch (UnknownAccountException uae) {
            return SimpleMsgVO.getFail9996();
        } catch (IncorrectCredentialsException ice) {
            return SimpleMsgVO.getFail9995();
        } catch (Exception e) {
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
        return SimpleMsgVO.getOk();
    }

    /**
     * 退出登录
     * @return
     */
    @RequestMapping("/logout")
    public Object logout() {
        try {
             SecurityUtils.getSubject().logout();
            return SimpleMsgVO.getOk();
        } catch (Exception e) {
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

}
