package com.chains.service;

import com.chains.model.SysPlatform;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 平台信息 服务类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public interface ISysPlatformService extends IService<SysPlatform> {
    /**
     * 删除数据
     * @param id
     * @return
     */
    boolean updateStatusById(String id);
}
