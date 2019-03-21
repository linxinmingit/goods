package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 消息设置表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public class SysMeesageNotify extends Model<SysMeesageNotify> {

    private static final long serialVersionUID = 1L;

    /**
     * 消息设置id
     */
    private String id;

    /**
     * 消息内容
     */
    private String messageContent;

    /**
     * 发送方式
     */
    private String sendType;

    /**
     * 发送对象
     */
    private String sendObj;

    /**
     * 是否推送消息
     */
    private Integer isPush;

    /**
     * 数据是否有效
     */
    private Integer isDeleted;

    /**
     * 创建时间
     */
    private LocalDateTime createOn;

    /**
     * 创建人名称
     */
    private String createBy;

    /**
     * 最后修改时间
     */
    private LocalDateTime updateOn;

    /**
     * 修改人名称
     */
    private String updateBy;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public String getSendType() {
        return sendType;
    }

    public void setSendType(String sendType) {
        this.sendType = sendType;
    }

    public String getSendObj() {
        return sendObj;
    }

    public void setSendObj(String sendObj) {
        this.sendObj = sendObj;
    }

    public Integer getIsPush() {
        return isPush;
    }

    public void setIsPush(Integer isPush) {
        this.isPush = isPush;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
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
        return "SysMeesageNotify{" +
        "id=" + id +
        ", messageContent=" + messageContent +
        ", sendType=" + sendType +
        ", sendObj=" + sendObj +
        ", isPush=" + isPush +
        ", isDeleted=" + isDeleted +
        ", createOn=" + createOn +
        ", createBy=" + createBy +
        ", updateOn=" + updateOn +
        ", updateBy=" + updateBy +
        "}";
    }
}
