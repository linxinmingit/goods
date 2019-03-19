package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * <p>
 * 角色表
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Data
public class SysRole extends Model<SysRole> {

    private static final long serialVersionUID = 1L;

    /**
     * 角色id
     */
    private String id;

    /**
     * 角色名称
     */
    private String roleName;

    /**
     * 角色编码
     */
    private String roleCode;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 创建时间
     */
    private LocalDateTime createOn;

    /**
     * 创建人名称
     */
    private String createBy;

    /**
     * 修改时间
     */
    private LocalDateTime updateOn;

    /**
     * 修改人名称
     */
    private String updateBy;

}
