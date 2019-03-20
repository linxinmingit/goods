package com.chains.service.impl;

import com.chains.model.SysUser;
import com.chains.mapper.SysUserMapper;
import com.chains.service.ISysUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements ISysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public boolean updateStatusById(String id) {
        return sysUserMapper.updateStatusById(id);
    }
}
