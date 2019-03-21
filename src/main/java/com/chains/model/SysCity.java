package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 市表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Data
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
    private Integer sort;



}
