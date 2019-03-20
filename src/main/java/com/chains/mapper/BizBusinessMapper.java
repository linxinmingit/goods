package com.chains.mapper;

import com.chains.model.BizBusiness;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 商品表 Mapper 接口
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Repository
public interface BizBusinessMapper extends BaseMapper<BizBusiness> {
    /**
     * 逻辑删除数据
     * @param id
     * @return
     */
     boolean updateStatusById(String id);
}
