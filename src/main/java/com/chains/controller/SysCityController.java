package com.chains.controller;


import com.chains.model.SysCity;
import com.chains.model.SysProvince;
import com.chains.service.ISysCityService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 市表 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/sysCity")
public class SysCityController {

    @Autowired
    private ISysCityService iSysCityService;

    /**
     * 查询市表下所有的数据
     * @return
     */
    @RequestMapping("/query")
    public Object queryList(){
        try {
            List<SysCity> sysCityList = iSysCityService.list();
            return TableMsgVO.getOk(sysCityList.size(),sysCityList);
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

}

