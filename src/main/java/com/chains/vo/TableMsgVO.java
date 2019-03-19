package com.chains.vo;

import com.chains.util.ResponseUtil;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * <p>
 * 定义返回对象（针对layui table返回）
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TableMsgVO implements Serializable {

    /**
     * 状态码
     */
    private String code;

    /**
     * 信息
     */
    private String message;

    /**
     * 总条数
     */
    private long count;

    /**
     * 数据
     */
    private Object data;

    public static TableMsgVO getOk(long count, Object data){
        return new TableMsgVO(ResponseUtil.CODE_0, ResponseUtil.MESSAGE_0, count, data);
    }

}
