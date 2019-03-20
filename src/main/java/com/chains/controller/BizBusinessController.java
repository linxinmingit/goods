package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.BizBusiness;
import com.chains.model.SysEmployee;
import com.chains.service.IBizBusinessService;
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
 * 商品表 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/bizBusiness")
public class BizBusinessController {

    @Autowired
    private IBizBusinessService iBizBusinessService;

    /**
     * 分页查询数据
     * @param bizBusinessPage
     * @param wrapper
     * @param bizBusiness
     * @return
     */
    @RequestMapping("/page")
    public Object queryPageList(Page<BizBusiness> bizBusinessPage, QueryWrapper<BizBusiness> wrapper, BizBusiness bizBusiness){
        try {
            if(null != bizBusiness.getBusinessName() && !"".equals(bizBusiness.getBusinessName())){
                wrapper.like("business_name", bizBusiness.getBusinessName());
            }
            IPage<BizBusiness> page = iBizBusinessService.page(new Page<>(bizBusinessPage.getCurrent(), bizBusinessPage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 添加/修改数据
     * @param bizBusiness
     * @param session
     * @return
     */
    @RequestMapping("/save")
    public Object save(BizBusiness bizBusiness, HttpSession session){
        /**
         * 从session中获取登录用户信息
         */
        SysEmployee employee = (SysEmployee) session.getAttribute("user");
        try {
            if(null != bizBusiness.getId() && !"".equals(bizBusiness.getId())){
                bizBusiness.setUpdateBy(employee.getLoginName());
                bizBusiness.setUpdateOn(LocalDateTime.now());
            } else {
                bizBusiness.setCreateOn(LocalDateTime.now());
                bizBusiness.setCreateBy(employee.getLoginName());
                /**
                 * 数据添加默认有效
                 */
                bizBusiness.setIsDeleted(0);
            }

            return SimpleMsgVO.getOk(iBizBusinessService.saveOrUpdate(bizBusiness));
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 根据id逻辑删除数据
     * @param id
     * @return
     */
    @RequestMapping("/del/{id}")
    public Object save(@PathVariable("id") String id){
        boolean flag = iBizBusinessService.updateStatusById(id);
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

