package com.chains.service.impl;

import com.chains.mapper.SysEmployeeMapper;
import com.chains.model.SysEmployee;
import com.chains.service.ISysEmployeeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Service
public class SysEmployeeServiceImpl extends ServiceImpl<SysEmployeeMapper, SysEmployee> implements ISysEmployeeService {
    @Autowired
    private SysEmployeeMapper mapper;


    @Override
    public boolean updateStatusById(String id) {
        return mapper.updateStatusById(id);
    }
}
