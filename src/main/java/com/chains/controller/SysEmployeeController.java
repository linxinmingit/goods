package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.SysEmployee;
import com.chains.service.ISysEmployeeService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
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
 * @author cong
 * @since 2019-03-15
 */
@RestController
@RequestMapping("/sysEmployee")
public class SysEmployeeController {

    @Autowired
    private ISysEmployeeService iSysEmployeeService;


    /**
     * 分页查询角色列表
     * @param sysEmployeePage
     * @param wrapper
     * @param sysEmployee
     * @return
     */
//    @OptionalLog(module = "员工管理",methodsType = "分页查询员工信息")
    @RequestMapping("/page")
    public Object queryPageList(Page<SysEmployee> sysEmployeePage, QueryWrapper<SysEmployee> wrapper, SysEmployee sysEmployee){
        try {
            if(null != sysEmployee.getEmployeeName() && !"".equals(sysEmployee.getEmployeeName())){
                wrapper.like("employee_name", sysEmployee.getEmployeeName());
            }
            IPage<SysEmployee> page = iSysEmployeeService.page(new Page<>(sysEmployeePage.getCurrent(), sysEmployeePage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 新增或编辑角色
     * @param sysEmployee
     * @return
     */
//    @OptionalLog(module = "员工管理",methodsType = "数据添加/修改")
    @RequestMapping("/save")
    public Object save(SysEmployee sysEmployee, HttpSession session){
        /**
         * 从session中获取登录用户信息
         */
        SysEmployee employee = (SysEmployee) session.getAttribute("user");
        try {
            if(null != sysEmployee.getId() && !"".equals(sysEmployee.getId())){
                sysEmployee.setUpdateOn(LocalDateTime.now());
                sysEmployee.setCreateBy(employee.getLoginName());
            } else {
                sysEmployee.setCreateOn(LocalDateTime.now());
                sysEmployee.setCreateBy(employee.getLoginName());
            }
            return SimpleMsgVO.getOk(iSysEmployeeService.saveOrUpdate(sysEmployee));
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 删除id
     * @param id
     * @return
     */
//    @OptionalLog(module = "员工管理",methodsType = "根据id 逻辑删除数据(修改数据状态)")
    @RequestMapping("/del/{id}")
    public Object save(@PathVariable("id") String id){
        try {
            boolean flag = iSysEmployeeService.updateStatusById(id);
//            boolean flag = iSysEmployeeService.removeById(id);
            if(flag){
//                QueryWrapper<SysEmployee> wrapper = new QueryWrapper<>();
//                wrapper.eq("id", id);
//                iSysEmployeeService.remove(wrapper);
                return SimpleMsgVO.getOk();
            }
        } catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
        return null;
    }

}

