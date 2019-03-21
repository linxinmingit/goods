package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.SysEmployee;
import com.chains.model.SysPlatform;
import com.chains.service.ISysPlatformService;
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
 * 平台信息 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/sysPlatform")
public class SysPlatformController {

    @Autowired
    private ISysPlatformService iSysPlatformService;

    /**
     * 分页查询数据
     * @param sysPlatformPage
     * @param wrapper
     * @param sysPlatform
     * @return
     */
    @RequestMapping("/page")
    public Object queryPageList(Page<SysPlatform> sysPlatformPage, QueryWrapper<SysPlatform> wrapper, SysPlatform sysPlatform){
        try {
            if(null != sysPlatform.getCompanyName() && !"".equals(sysPlatform.getCompanyName())){
                wrapper.like("company_name", sysPlatform.getCompanyName());
            }
            IPage<SysPlatform> page = iSysPlatformService.page(new Page<>(sysPlatformPage.getCurrent(), sysPlatformPage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 添加/修改数据
     * @param sysPlatform
     * @param session
     * @return
     */
    @RequestMapping("/save")
    public Object save(SysPlatform sysPlatform, HttpSession session){
        /**
         * 从session中获取登录用户信息
         */
        SysEmployee employee = (SysEmployee) session.getAttribute("user");
        try {
            if(null != sysPlatform.getId() && !"".equals(sysPlatform.getId())){
                sysPlatform.setUpdateOn(LocalDateTime.now());
                sysPlatform.setCreateBy(employee.getLoginName());
            } else {
                sysPlatform.setCreateOn(LocalDateTime.now());
                sysPlatform.setCreateBy(employee.getLoginName());

                /**
                 * 添加数据默认有效
                 */
                sysPlatform.setIsDeleted(0);
            }
            return SimpleMsgVO.getOk(iSysPlatformService.saveOrUpdate(sysPlatform));
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
        boolean flag = iSysPlatformService.updateStatusById(id);
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

