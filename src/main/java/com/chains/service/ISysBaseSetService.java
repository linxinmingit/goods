package com.chains.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.chains.model.SysBaseSet;
import com.baomidou.mybatisplus.extension.service.IService;
import com.chains.model.SysEmployee;

/**
 * <p>
 * 基础设置 服务类
 * </p>
 *
 * @author chains
 * @since 2019-03-19
 */
public interface ISysBaseSetService extends IService<SysBaseSet> {

//    void remove(QueryWrapper<SysEmployee> wrapper);
    /**
     * 根据ID逻辑删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);
}
