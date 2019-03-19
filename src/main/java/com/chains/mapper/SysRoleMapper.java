package com.chains.mapper;

import com.chains.model.SysRole;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 * 角色表 Mapper 接口
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Mapper
public interface SysRoleMapper extends BaseMapper<SysRole> {

    SysRole findById(String id);

    void deleteByIds(String id);

}
