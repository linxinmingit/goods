package com.chains.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.chains.mapper.SysEmployeeMapper;
import com.chains.mapper.SysMenuMapper;
import com.chains.model.SysMenu;
import com.chains.service.ISysMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 菜单表 服务实现类
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {

    @Autowired
    private SysEmployeeMapper sysEmployeeMapper;

    /**
     * 根据用户id获取对应的菜单
     * @param id
     * @return
     */
    @Override
    public Object findCurrentMenusById(String id) {
        List<SysMenu> menuList = sysEmployeeMapper.findCurrentMenusById(id);
        JSONArray menus = new JSONArray();
        if(null != menuList && !menuList.isEmpty()){
            for (SysMenu sysMenu : menuList) {
                if("0".equals(sysMenu.getPid())) {
                    JSONObject parentMenu = new JSONObject();
                    parentMenu.put("name", sysMenu.getMenuName());
                    JSONArray childrens = new JSONArray();
                    for (SysMenu menu : menuList) {
                        if(menu.getPid().equals(sysMenu.getId())){
                            JSONObject childrenMenu = new JSONObject();
                            childrenMenu.put("name", menu.getMenuName());
                            childrenMenu.put("url", menu.getMenuUrl());
                            childrens.add(childrenMenu);
                        }
                    }
                    parentMenu.put("children", childrens);
                    menus.add(parentMenu);
                }
            }
        }
        return menus;
    }

    /**
     * 获取角色对应的菜单
     * @param roleId
     * @return
     */
    @Override
    public List<SysMenu> findMenusByRoleId(String roleId) {
        return sysEmployeeMapper.findMenusByRoleId(roleId);
    }

}
