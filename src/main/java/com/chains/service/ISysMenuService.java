package com.chains.service;

import com.chains.model.SysMenu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 菜单表 服务类
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
public interface ISysMenuService extends IService<SysMenu> {

    /**
     * 根据用户id获取对应的菜单
     * @param id
     * @return
     */
    Object findCurrentMenusById(String id);

    /**
     * 获取角色对应的菜单
     * @param roleId
     * @return
     */
    List<SysMenu> findMenusByRoleId(String roleId);
}
