package com.chains.mapper;

import com.chains.model.SysBaseSet;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 基础设置 Mapper 接口
 * </p>
 *
 * @author chains
 * @since 2019-03-19
 */
@Repository
public interface SysBaseSetMapper extends BaseMapper<SysBaseSet> {

    /**
     * 根据ID逻辑删除
     * @param id
     * @return
     */
    boolean updateStatusById(String id);

}
