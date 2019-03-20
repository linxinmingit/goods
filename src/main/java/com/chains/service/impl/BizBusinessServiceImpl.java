package com.chains.service.impl;

import com.chains.model.BizBusiness;
import com.chains.mapper.BizBusinessMapper;
import com.chains.service.IBizBusinessService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 商品表 服务实现类
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Service
public class BizBusinessServiceImpl extends ServiceImpl<BizBusinessMapper, BizBusiness> implements IBizBusinessService {

    @Autowired
    private BizBusinessMapper bizBusinessMapper;

    @Override
    public boolean updateStatusById(String id) {
        return bizBusinessMapper.updateStatusById(id);
    }
}
