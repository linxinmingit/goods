package com.chains.service;

import com.chains.model.SysPaymentChannel;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 支付渠道表 服务类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */

public interface ISysPaymentChannelService extends IService<SysPaymentChannel> {
    /**
     * 删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
