package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 市表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public class SysCity extends Model<SysCity> {

    private static final long serialVersionUID = 1L;

    /**
     * 市id
     */
    private String id;

    /**
     * 市名称
     */
    private String cityName;

    /**
     * 市编码
     */
    private String cityCode;

    /**
     * 省id
     */
    private String provinceId;

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

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId;
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
        return "SysCity{" +
        "id=" + id +
        ", cityName=" + cityName +
        ", cityCode=" + cityCode +
        ", provinceId=" + provinceId +
        ", order=" + order +
        "}";
    }
}
