package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 菜单表
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Data
public class SysMenu extends Model<SysMenu> {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单id
     */
    private String id;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 菜单code
     */
    private String menuCode;

    /**
     * 父id
     */
    private String pid;

    /**
     * 菜单层级
     */
    private Integer level;

    /**
     * 菜单url
     */
    private String menuUrl;

    /**
     * 菜单图片地址
     */
    private String menuImg;

    /**
     * 排序
     */
    private Integer sort;

}
