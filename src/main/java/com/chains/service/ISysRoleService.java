package com.chains.service;

import com.chains.model.SysRole;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 角色表 服务类
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
public interface ISysRoleService extends IService<SysRole> {

    /**
     * 获取所有授权菜单
     * @param roleId
     * @return
     */
    Object authRoles(String roleId);

    /**
     * 保存角色菜单
     * @param roleId
     * @param menuIds
     * @return
     */
    Object saveRoleMenus(String roleId, String menuIds);
}
