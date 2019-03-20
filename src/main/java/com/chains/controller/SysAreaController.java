package com.chains.controller;


import com.chains.model.SysArea;
import com.chains.model.SysCity;
import com.chains.service.ISysAreaService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 区表 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@RestController
@RequestMapping("/sysArea")
public class SysAreaController {

    @Autowired
    private ISysAreaService iSysAreaService;

    /**
     * 查询出区域表下所有的数据
     * @return
     */
    @RequestMapping("/query")
    public Object queryList(){
        try {
            List<SysArea> sysAreaList = iSysAreaService.list();
            return TableMsgVO.getOk(sysAreaList.size(),sysAreaList);
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

}

