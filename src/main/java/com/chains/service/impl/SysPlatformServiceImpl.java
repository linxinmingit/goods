package com.chains.service.impl;

import com.chains.model.SysPlatform;
import com.chains.mapper.SysPlatformMapper;
import com.chains.service.ISysPlatformService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 平台信息 服务实现类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Service
public class SysPlatformServiceImpl extends ServiceImpl<SysPlatformMapper, SysPlatform> implements ISysPlatformService {

    @Autowired
    private SysPlatformMapper sysPlatformMapper;

    @Override
    public boolean updateStatusById(String id) {
        return sysPlatformMapper.updateStatusById(id);
    }
}
