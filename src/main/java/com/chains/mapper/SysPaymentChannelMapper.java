package com.chains.mapper;

import com.chains.model.SysPaymentChannel;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 支付渠道表 Mapper 接口
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Repository
public interface SysPaymentChannelMapper extends BaseMapper<SysPaymentChannel> {
    /**
     * 删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
