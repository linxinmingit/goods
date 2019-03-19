package com.chains.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.chains.model.SysEmployee;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
public interface ISysEmployeeService extends IService<SysEmployee> {
    /**
     * 根据主键ID做逻辑删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
