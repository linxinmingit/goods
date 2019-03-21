package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.SysEmployee;
import com.chains.model.SysPaymentChannel;
import com.chains.service.ISysPaymentChannelService;
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
 * 支付渠道表 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/sysPaymentChannel")
public class SysPaymentChannelController {

    @Autowired
    private ISysPaymentChannelService iSysPaymentChannelService;

    /**
     * 分页查询信息
     * @param sysPaymentChannelPage
     * @param wrapper
     * @param sysPaymentChannel
     * @return
     */
    @RequestMapping("/page")
    public Object queryPageList(Page<SysPaymentChannel> sysPaymentChannelPage, QueryWrapper<SysPaymentChannel> wrapper, SysPaymentChannel sysPaymentChannel){
        try {
            if(null != sysPaymentChannel.getChannelName() && !"".equals(sysPaymentChannel.getChannelName())){
                wrapper.like("channel_name", sysPaymentChannel.getChannelName());
            }
            IPage<SysPaymentChannel> page = iSysPaymentChannelService.page(new Page<>(sysPaymentChannelPage.getCurrent(), sysPaymentChannelPage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 添加/修改信息
     * @param sysPaymentChannel
     * @param session
     * @return
     */

    @RequestMapping("/save")
    public Object save(SysPaymentChannel sysPaymentChannel, HttpSession session){
        /**
         * 从session中获取登录用户信息
         */
        SysEmployee employee = (SysEmployee) session.getAttribute("user");
        try {
            if(null != sysPaymentChannel.getId() && !"".equals(sysPaymentChannel.getId())){
                sysPaymentChannel.setCreateBy(employee.getLoginName());
                sysPaymentChannel.setUpdateOn(LocalDateTime.now());
            } else {
                sysPaymentChannel.setCreateOn(LocalDateTime.now());
                sysPaymentChannel.setCreateBy(employee.getLoginName());
            }
            return SimpleMsgVO.getOk(iSysPaymentChannelService.saveOrUpdate(sysPaymentChannel));
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/del/{id}")
    public Object save(@PathVariable("id") String id){
        try {
            boolean flag = iSysPaymentChannelService.updateStatusById(id);
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

