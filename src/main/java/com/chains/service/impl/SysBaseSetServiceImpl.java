package com.chains.service.impl;

import com.chains.model.SysBaseSet;
import com.chains.mapper.SysBaseSetMapper;
import com.chains.service.ISysBaseSetService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 基础设置 服务实现类
 * </p>
 *
 * @author chains
 * @since 2019-03-19
 */
@Service
public class SysBaseSetServiceImpl extends ServiceImpl<SysBaseSetMapper, SysBaseSet> implements ISysBaseSetService {

    @Autowired
    private SysBaseSetMapper sysBaseSetMapper;

    @Override
    public boolean updateStatusById(String id) {
        return sysBaseSetMapper.updateStatusById(id);
    }
}
