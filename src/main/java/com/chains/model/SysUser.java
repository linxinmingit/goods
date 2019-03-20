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
 * @author chains
 * @since 2019-03-20
 */
@Data
public class SysUser extends Model<SysUser> {

    private static final long serialVersionUID = 1L;

    /**
     * 用户id
     */
    private String id;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 登录名
     */
    private String loginName;

    private String password;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 性别  1 男  0  女
     */
    private Integer sex;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 用户头像
     */
    private String userImg;

    /**
     * 成长值
     */
    private Integer growth;

    /**
     * 会员等级
     */
    private Integer level;

    /**
     * 人物模型地址
     */
    private String userModelUrl;

    /**
     * 绑定的终端id
     */
    private String terminalId;

    /**
     * 微信登录验证id
     */
    private String accessId;

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

    /**
     * 删除状态  0 可用  1已删除
     */
    private Integer isDeleted;

}
