package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 省表
 * </p>
 *
 * @author chains
 * @since 2019-03-20
 */
@Data
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
    private Integer sort;

}
