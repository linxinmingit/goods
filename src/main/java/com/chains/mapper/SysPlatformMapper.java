package com.chains.mapper;

import com.chains.model.SysPlatform;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 平台信息 Mapper 接口
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Repository
public interface SysPlatformMapper extends BaseMapper<SysPlatform> {
    /**
     * 删除数据
     * @param id
     * @return
     */
    boolean updateStatusById(String id);
}
