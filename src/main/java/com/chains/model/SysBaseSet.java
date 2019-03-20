package com.chains.model;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 基础设置
 * </p>
 *
 * @author chains
 * @since 2019-03-19
 */
@Data
public class SysBaseSet extends Model<SysBaseSet> {

    private static final long serialVersionUID = 1L;

    /**
     * 基础设置id
     */
    private String id;

    /**
     * 热门搜索关键词 
     */
    private String hotSearch;

    /**
     * 评价是否审批  0 是  1 否
     */
    private Integer appraiseExamine;

    /**
     * 默认图片
     */
    private String defaultImg;

    /**
     * 用户协议
     */
    private String userAgreement;

    /**
     * 删除状态  0 可用  1已删除
     */
    private Integer isDeleted;

    /**
     * 创建时间
     */
    private LocalDateTime createOn;

    /**
     * 创建人名称
     */
    private String createBy;

    /**
     * 最后修改时间
     */
    private LocalDateTime updateOn;

    /**
     * 最后修改人名称
     */
    private String updateBy;

}
