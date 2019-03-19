package com.chains.config;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {

    /**
     * 定义shiro Filter 工厂类.
     * @param securityManager
     * @return
     */
    @Bean
    public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager){
        //1、定义ShiroFactoryBean.
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();

        //2、设置SecurityManager;
        shiroFilterFactoryBean.setSecurityManager(securityManager);

        //3、配置拦截器.: 使用Map进行配置:LinkedHashMap ，LinkedHashMap是有序的, shiro会根据添加的顺序进行拦截.
        Map<String,String> filterChainMap = new LinkedHashMap<String,String>();
        //配置退出. 过滤器：logout,这个由shiro进行实现的.
//        filterChainMap.put("/logout", "logout");
        //配置记住我，认证通过的才能访问
//        filterChainMap.put("/index.html","user");
//        filterChainMap.put("/", "user");
        filterChainMap.put("/js/**","anon");//可匿名访问到js文件
        filterChainMap.put("/css/**","anon");
        filterChainMap.put("/img/**","anon");
        filterChainMap.put("/layui/**","anon");
        filterChainMap.put("/module/**","anon");
        filterChainMap.put("/login","anon");
        //authc:所有的URL都必须认证通过才可以访问.
        filterChainMap.put("/**","authc");
        //设置默认登录的URL.
        shiroFilterFactoryBean.setLoginUrl("/login.html");
        //设置成功之后要跳转的链接.
        shiroFilterFactoryBean.setSuccessUrl("/index.html");
        //未授权界面.
        shiroFilterFactoryBean.setUnauthorizedUrl("/403.html");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainMap);

        //4、返回ShiroFactoryBean.
        return shiroFilterFactoryBean;
    }

    /**
     * 定义Shiro的安全管理器.
     * @return
     */
    @Bean
    public SecurityManager securityManager(){
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        //设置自定义的realm
        securityManager.setRealm(myShiroRealm());
        //注入缓存管理器.
        securityManager.setCacheManager(ehCacheManager());
        //配置记住我.
        securityManager.setRememberMeManager(cookieRememberMeManager());

        return securityManager;
    }

    /**
     * 自定义Realm
     * @return
     */
    @Bean
    public MyShiroRealm myShiroRealm(){
        MyShiroRealm myShiroRealm = new MyShiroRealm();
        myShiroRealm.setCredentialsMatcher(hashedCredentialsMatcher());
        return myShiroRealm;
    }

    /**
     * 密码加密算法.
     * @return
     */
    @Bean
    public HashedCredentialsMatcher hashedCredentialsMatcher(){
        //默认的.
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();

        hashedCredentialsMatcher.setHashAlgorithmName("md5");//加密算法.
        hashedCredentialsMatcher.setHashIterations(2);//散列的次数.
        return hashedCredentialsMatcher;
    }

    /**
     * 注入Ehcache缓存.
     */
    @Bean
    public EhCacheManager ehCacheManager(){
        EhCacheManager ehCacheManager = new EhCacheManager();
        //配置缓存文件.
        ehCacheManager.setCacheManagerConfigFile("classpath:ehcache-shiro.xml");
        return ehCacheManager;
    }


    /**
     * 配置cookie对象. -- 记住我cookie
     */
    @Bean
    public SimpleCookie rememberMeCookie(){
        //cookie的名称，也即是 前端 checkbox的name = rememberMe
        SimpleCookie simpleCookie = new SimpleCookie("rememberMe");
        //可选： 配置cookie的生效时间，单位是秒. 60*60*24 = 1天.
        simpleCookie.setMaxAge(60*60*24);
        return simpleCookie;
    }


    /**
     * cookie的管理对象.
     */
    @Bean
    public CookieRememberMeManager cookieRememberMeManager(){
        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        //需要管理我们的cookie对象.
        cookieRememberMeManager.setCookie(rememberMeCookie());
        //rememberMe cookie加密的密钥
        cookieRememberMeManager.setCipherKey(Base64.decode("2AvVhdsgUs0FSA3SDFAdag=="));
        return cookieRememberMeManager;
    }


}
