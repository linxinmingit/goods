package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.SysProvince;
import com.chains.model.SysRole;
import com.chains.service.ISysProvinceService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * <p>
 * 省表 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/sysProvince")
public class SysProvinceController {

    @Autowired
    private ISysProvinceService iSysProvinceService;

    /**
     * 查询省表里面所有的数据
     * @return
     */
    @RequestMapping("/query")
    public Object queryList(){
        try {
            List<SysProvince> sysProvinceList = iSysProvinceService.list();
            return TableMsgVO.getOk(sysProvinceList.size(),sysProvinceList);
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

}

