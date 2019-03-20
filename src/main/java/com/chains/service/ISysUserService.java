package com.chains.service;

import com.chains.model.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public interface ISysUserService extends IService<SysUser> {
    /**
     * 根据ID逻辑删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
