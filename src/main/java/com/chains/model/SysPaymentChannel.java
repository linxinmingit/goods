package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
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
    private Integer order;

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


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName;
    }

    public String getChannelCode() {
        return channelCode;
    }

    public void setChannelCode(String channelCode) {
        this.channelCode = channelCode;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Integer getIsOpen() {
        return isOpen;
    }

    public void setIsOpen(Integer isOpen) {
        this.isOpen = isOpen;
    }

    public LocalDateTime getCreateOn() {
        return createOn;
    }

    public void setCreateOn(LocalDateTime createOn) {
        this.createOn = createOn;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public LocalDateTime getUpdateOn() {
        return updateOn;
    }

    public void setUpdateOn(LocalDateTime updateOn) {
        this.updateOn = updateOn;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SysPaymentChannel{" +
        "id=" + id +
        ", channelName=" + channelName +
        ", channelCode=" + channelCode +
        ", order=" + order +
        ", isOpen=" + isOpen +
        ", createOn=" + createOn +
        ", createBy=" + createBy +
        ", updateOn=" + updateOn +
        ", updateBy=" + updateBy +
        "}";
    }
}
