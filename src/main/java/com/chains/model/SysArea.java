package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 区表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Data
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
    private Integer sort;



}
