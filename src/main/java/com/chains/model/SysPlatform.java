package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 平台信息
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public class SysPlatform extends Model<SysPlatform> {

    private static final long serialVersionUID = 1L;

    private String id;

    /**
     * logo地址
     */
    private String logoUrl;

    /**
     * logo名称
     */
    private String logoName;

    /**
     * 公司网址
     */
    private String companyUrl;

    /**
     * 公司名称
     */
    private String companyName;

    /**
     * 二维码地址
     */
    private String qrcode;

    /**
     * 联系电话
     */
    private String tel;

    /**
     * 公司地址
     */
    private String companyAddr;

    /**
     * 是否删除  0 否 1 已删除
     */
    private Integer isDeleted;

    /**
     * 创建时间
     */
    private LocalDateTime createOn;

    /**
     * 创建人
     */
    private String createBy;

    /**
     * 修改时间
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

    public String getLogoUrl() {
        return logoUrl;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    public String getLogoName() {
        return logoName;
    }

    public void setLogoName(String logoName) {
        this.logoName = logoName;
    }

    public String getCompanyUrl() {
        return companyUrl;
    }

    public void setCompanyUrl(String companyUrl) {
        this.companyUrl = companyUrl;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCompanyAddr() {
        return companyAddr;
    }

    public void setCompanyAddr(String companyAddr) {
        this.companyAddr = companyAddr;
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
        return "SysPlatform{" +
        "id=" + id +
        ", logoUrl=" + logoUrl +
        ", logoName=" + logoName +
        ", companyUrl=" + companyUrl +
        ", companyName=" + companyName +
        ", qrcode=" + qrcode +
        ", tel=" + tel +
        ", companyAddr=" + companyAddr +
        ", isDeleted=" + isDeleted +
        ", createOn=" + createOn +
        ", createBy=" + createBy +
        ", updateOn=" + updateOn +
        ", updateBy=" + updateBy +
        "}";
    }
}
