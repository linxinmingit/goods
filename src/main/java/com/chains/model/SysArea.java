package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 区表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public class SysArea extends Model<SysArea> {

    private static final long serialVersionUID = 1L;

    /**
     * 区id
     */
    private String id;

    /**
     * 区名称
     */
    private String areaName;

    /**
     * 区代码
     */
    private String areaCode;

    /**
     * 城市id
     */
    private String cityId;

    /**
     * 排序
     */
    private Integer order;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SysArea{" +
        "id=" + id +
        ", areaName=" + areaName +
        ", areaCode=" + areaCode +
        ", cityId=" + cityId +
        ", order=" + order +
        "}";
    }
}
