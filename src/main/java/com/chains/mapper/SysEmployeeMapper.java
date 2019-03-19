package com.chains.mapper;

import com.chains.model.SysEmployee;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.chains.model.SysMenu;
import com.chains.model.SysRole;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Repository
public interface SysEmployeeMapper extends BaseMapper<SysEmployee> {

    //根据用户id获取对应的菜单
    @Select("SELECT sm.* " +
            "FROM sys_employee se " +
            "RIGHT JOIN sys_employee_role ser ON se.id = ser.employee_id " +
            "RIGHT JOIN sys_role sr ON ser.role_id = sr.id " +
            "RIGHT JOIN sys_role_menu srm ON sr.id = srm.role_id " +
            "RIGHT JOIN sys_menu sm ON srm.menu_id = sm.id " +
            "WHERE se.id = #{id}")
    List<SysMenu> findCurrentMenusById(String id);

    //获取角色对应的菜单
    @Select("SELECT sm.* " +
            "FROM sys_role sr " +
            "RIGHT JOIN sys_role_menu srm ON sr.id = srm.role_id " +
            "RIGHT JOIN sys_menu sm ON srm.menu_id = sm.id " +
            "WHERE sr.id = #{roleId}")
    List<SysMenu> findMenusByRoleId(String roleId);

    SysRole findById(String id);

    boolean updateStatusById(String id);
}
