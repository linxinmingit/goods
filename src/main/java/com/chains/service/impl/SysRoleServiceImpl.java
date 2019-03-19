package com.chains.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.chains.mapper.SysMenuMapper;
import com.chains.mapper.SysRoleMapper;
import com.chains.model.SysMenu;
import com.chains.model.SysRole;
import com.chains.model.SysRoleMenu;
import com.chains.service.ISysMenuService;
import com.chains.service.ISysRoleMenuService;
import com.chains.service.ISysRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * <p>
 * 角色表 服务实现类
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements ISysRoleService {

    @Autowired
    private ISysMenuService sysMenuService;

    @Autowired
    private ISysRoleMenuService sysRoleMenuService;

    /**
     * 获取所有授权菜单
     * @param roleId
     * @return
     */
    @Override
    public Object authRoles(String roleId) {
        //获取所有菜单
        List<SysMenu> allMenus = sysMenuService.list();
        //获取角色对应的菜单
        List<SysMenu> roleMenus = sysMenuService.findMenusByRoleId(roleId);
        //封装
        JSONArray menus = new JSONArray();
        if(null != allMenus && !allMenus.isEmpty()){
            for (SysMenu sysMenu : allMenus) {
                if("0".equals(sysMenu.getPid())) {
                    JSONObject parentMenu = new JSONObject();
                    parentMenu.put("title", sysMenu.getMenuName());
                    parentMenu.put("value", sysMenu.getId());
                    JSONArray childrens = new JSONArray();
                    for (SysMenu menu : allMenus) {
                        if(menu.getPid().equals(sysMenu.getId())){
                            JSONObject childrenMenu = new JSONObject();
                            childrenMenu.put("title", menu.getMenuName());
                            childrenMenu.put("value", menu.getId());
                            if(null != roleMenus && !roleMenus.isEmpty()){
                                for(SysMenu authMenu : roleMenus){
                                    if(authMenu.getId().equals(menu.getId())){
                                        childrenMenu.put("checked", true);
                                        break;
                                    }
                                }
                            }
                            childrens.add(childrenMenu);
                        }
                    }
                    parentMenu.put("data", childrens);
                    menus.add(parentMenu);
                }
            }
        }
        return menus;
    }

    /**
     * 保存角色菜单
     * @param roleId
     * @param menuIds
     * @return
     */
    @Override
    public Object saveRoleMenus(String roleId, String menuIds) {
        //移除原来关联的角色菜单
        QueryWrapper<SysRoleMenu> wrapper = new QueryWrapper<>();
        wrapper.eq("role_id", roleId);
        sysRoleMenuService.remove(wrapper);

        //批量添加现在关联的角色菜单
        List<String> ids = Arrays.asList(menuIds.split(","));
        List<SysRoleMenu> list = new ArrayList<>();
        for (String id : ids) {
            SysRoleMenu sysRoleMenu = new SysRoleMenu();
            sysRoleMenu.setRoleId(roleId);
            sysRoleMenu.setMenuId(id);
            list.add(sysRoleMenu);
        }
        return sysRoleMenuService.saveBatch(list);
    }
}
