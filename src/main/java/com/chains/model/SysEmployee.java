package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 用户表
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Data
public class SysEmployee extends Model<SysEmployee> {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private String id;

    /**
     * 用户名
     */
    private String employeeName;

    /**
     * 用户登录账号
     */
    private String loginName;

    /**
     * 账号密码
     */
    private String password;

    /**
     * 手机号码
     */
    private String mobile;

    /**
     * 用户状态  0 启用  1 失效
     */
    private Integer status;

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
