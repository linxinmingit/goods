package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.SysEmployee;
import com.chains.model.SysUser;
import com.chains.service.ISysUserService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/sysUser")
public class SysUserController {

    @Autowired
    private ISysUserService iSysUserService;

    /**
     * 分页查询数据
     * @param sysUserPage
     * @param wrapper
     * @param sysUser
     * @return
     */
    @RequestMapping("/page")
    public Object queryPageList(Page<SysUser> sysUserPage, QueryWrapper<SysUser> wrapper, SysUser sysUser){
        try {
            if(null != sysUser.getLoginName() && !"".equals(sysUser.getLoginName())){
                wrapper.like("user_name", sysUser.getLoginName());
            }
            IPage<SysUser> page = iSysUserService.page(new Page<>(sysUserPage.getCurrent(), sysUserPage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 添加/编辑数据
     * @param sysUser
     * @param session
     * @return
     */
    @RequestMapping("/save")
    public Object save(SysUser sysUser, HttpSession session){
        /**
         * 从session中获取登录用户信息
         */
        SysEmployee employee = (SysEmployee) session.getAttribute("user");
        try {
            if(null != sysUser.getId() && !"".equals(sysUser.getId())){
                sysUser.setUpdateOn(LocalDateTime.now());
                sysUser.setCreateBy(employee.getLoginName());
            } else {
                sysUser.setCreateBy(employee.getLoginName());
                sysUser.setCreateOn(LocalDateTime.now());
            }
            /**
             * 数据状态添加默认有效
             */
            sysUser.setIsDeleted(0);
            return SimpleMsgVO.getOk(iSysUserService.saveOrUpdate(sysUser));
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 逻辑删除数据
     * @param id
     * @return
     */
    @RequestMapping("/del/{id}")
    public Object save(@PathVariable("id") String id){

        boolean flag = iSysUserService.updateStatusById(id);
        try {
            if(flag){
                return SimpleMsgVO.getOk();
            }
        } catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
        return null;
    }

}

