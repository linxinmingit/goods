package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 省表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
public class SysProvince extends Model<SysProvince> {

    private static final long serialVersionUID = 1L;

    /**
     * 省id
     */
    private String id;

    /**
     * 省名称
     */
    private String provinceName;

    /**
     * 省编码code
     */
    private String provinceCode;

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

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    public String getProvinceCode() {
        return provinceCode;
    }

    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode;
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
        return "SysProvince{" +
        "id=" + id +
        ", provinceName=" + provinceName +
        ", provinceCode=" + provinceCode +
        ", order=" + order +
        "}";
    }
}
