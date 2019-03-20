package com.chains.service;

import com.chains.model.BizBusiness;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 商品表 服务类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public interface IBizBusinessService extends IService<BizBusiness> {
    /**
     * 逻辑删除数据
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
