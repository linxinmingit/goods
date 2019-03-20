package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 商品表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Data
public class BizBusiness extends Model<BizBusiness> {

    private static final long serialVersionUID = 1L;

    private String id;

    /**
     * 商家名称
     */
    private String businessName;

    /**
     * 商家电话
     */
    private String mobile;

    /**
     * 省id
     */
    private String provinceId;

    /**
     * 城市id
     */
    private String cityId;

    /**
     * 区域id
     */
    private String areaId;

    /**
     * 商家地址
     */
    private String businessAddress;

    /**
     * 联系人
     */
    private String linkPeople;

    /**
     * 创建时间
     */
    private LocalDateTime createOn;

    /**
     * 创建人名称
     */
    private String createBy;

    /**
     * 修改时间
     */
    private LocalDateTime updateOn;

    /**
     * 修改人名称
     */
    private String updateBy;

    /**
     * 删除状态  0 可用  1已删除
     */
    private Integer isDeleted;

}
