package com.chains.mapper;

import com.chains.model.SysUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Repository
public interface SysUserMapper extends BaseMapper<SysUser> {

    /**
     * 根据ID逻辑删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
