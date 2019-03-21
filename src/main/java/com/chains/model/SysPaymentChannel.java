package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 支付渠道表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Data
public class SysPaymentChannel extends Model<SysPaymentChannel> {

    private static final long serialVersionUID = 1L;

    /**
     * 支付渠道id
     */
    private String id;

    /**
     * 渠道名称
     */
    private String channelName;

    /**
     * 渠道code
     */
    private String channelCode;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 是否开启
     */
    private Integer isOpen;

    /**
     * 创建时间
     */
    private LocalDateTime createOn;

    /**
     * 创建人
     */
    private String createBy;

    /**
     * 最后修改时间
     */
    private LocalDateTime updateOn;

    /**
     * 修改人
     */
    private String updateBy;



}
