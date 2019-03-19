package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.model.SysEmployee;
import com.chains.model.SysRole;
import com.chains.model.SysRoleMenu;
import com.chains.service.ISysRoleMenuService;
import com.chains.service.ISysRoleService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * <p>
 * 角色表 前端控制器
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@RestController
@RequestMapping("/sysRole")
public class SysRoleController {

    @Autowired
    private ISysRoleService sysRoleService;

    @Autowired
    private ISysRoleMenuService sysRoleMenuService;

    /**
     * 分页查询角色列表
     * @param sysRolePage
     * @param wrapper
     * @param sysRole
     * @return
     */
    @RequestMapping("/page")
    public Object queryPageList(Page<SysRole> sysRolePage, QueryWrapper<SysRole> wrapper, SysRole sysRole){
        try {
            if(null != sysRole.getRoleName() && !"".equals(sysRole.getRoleName())){
                wrapper.like("role_name", sysRole.getRoleName());
            }
            IPage<SysRole> page = sysRoleService.page(new Page<>(sysRolePage.getCurrent(), sysRolePage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 新增或编辑角色
     * @param sysRole
     * @return
     */
    @RequestMapping("/save")
    public Object save(SysRole sysRole){
        try {
            SysEmployee sysEmployee = (SysEmployee) SecurityUtils.getSubject().getPrincipal();
            if(null != sysRole.getId() && !"".equals(sysRole.getId())){
                sysRole.setCreateOn(LocalDateTime.now());
                sysRole.setCreateBy(sysEmployee.getLoginName());
            } else {
                sysRole.setUpdateOn(LocalDateTime.now());
                sysRole.setCreateBy(sysEmployee.getLoginName());
            }
            return SimpleMsgVO.getOk(sysRoleService.saveOrUpdate(sysRole));
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
    @RequestMapping("/del/{id}")
    public Object save(@PathVariable("id") String id){
        try {
            boolean flag = sysRoleService.removeById(id);
            if(flag){
                QueryWrapper<SysRoleMenu> wrapper = new QueryWrapper<>();
                wrapper.eq("role_id", id);
                sysRoleMenuService.remove(wrapper);
                return SimpleMsgVO.getOk();
            }
        } catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
        return null;
    }

    /**
     * 获取所有授权菜单
     * @param roleId
     * @return
     */
    @RequestMapping("/authRoles")
    public Object authRoles(String roleId){
        try {
            return SimpleMsgVO.getOk(sysRoleService.authRoles(roleId));
        } catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 保存角色菜单
     * @param roleId
     * @return
     */
    @RequestMapping("/saveRoleMenus")
    public Object saveRoleMenus(String roleId, String menuIds){
        try {
            return SimpleMsgVO.getOk(sysRoleService.saveRoleMenus(roleId, menuIds));
        } catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }


}

