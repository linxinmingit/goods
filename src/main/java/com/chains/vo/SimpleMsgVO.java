package com.chains.vo;

import com.chains.util.ResponseUtil;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * <p>
 * 定义普通返回对象
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SimpleMsgVO implements Serializable {

	/**
	 * 状态码
	 */
	private String code;

	/**
	 * 信息
	 */
	private String message;

	/**
	 * 数据
	 */
	private Object data;

	/**
	 * 返回成功，无数据
	 * @return
	 */
	public static SimpleMsgVO getOk(){
		return new SimpleMsgVO(ResponseUtil.CODE_0, ResponseUtil.MESSAGE_0, null);
	}

	/**
	 * 返回成功，无数据
	 * @param data
	 * @return
	 */
	public static SimpleMsgVO getOk(Object data){
		return new SimpleMsgVO(ResponseUtil.CODE_0, ResponseUtil.MESSAGE_0, data);
	}

	/**
	 * 系统错误，无数据
	 * @return
	 */
	public static SimpleMsgVO getFail9997(){
		return new SimpleMsgVO(ResponseUtil.CODE_9997, ResponseUtil.MESSAGE_9997, null);
	}

	/**
	 * 用户不存在，无数据
	 * @return
	 */
	public static SimpleMsgVO getFail9996(){
		return new SimpleMsgVO(ResponseUtil.CODE_9996, ResponseUtil.MESSAGE_9996, null);
	}

	/**
	 * 密码错误，无数据
	 * @return
	 */
	public static SimpleMsgVO getFail9995(){
		return new SimpleMsgVO(ResponseUtil.CODE_9995, ResponseUtil.MESSAGE_9995, null);
	}

}
