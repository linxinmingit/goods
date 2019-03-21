package com.chains.service.impl;

import com.chains.model.SysPaymentChannel;
import com.chains.mapper.SysPaymentChannelMapper;
import com.chains.service.ISysPaymentChannelService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 支付渠道表 服务实现类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Service
public class SysPaymentChannelServiceImpl extends ServiceImpl<SysPaymentChannelMapper, SysPaymentChannel> implements ISysPaymentChannelService {

    @Autowired
    private SysPaymentChannelMapper sysPaymentChannelMapper;


    @Override
    public boolean updateStatusById(String id) {
        return sysPaymentChannelMapper.updateStatusById(id);
    }
}
