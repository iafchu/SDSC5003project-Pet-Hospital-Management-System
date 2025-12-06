package com.phms.model;

import org.springframework.stereotype.Component;

import java.util.HashMap;

/**
 * class name:ResultMap <BR>
 * class description: Back前台结果 <BR>
 */
@Component
public class ResultMap extends HashMap<String, Object> {
	/**
	 * define a field serialVersionUID which type is long
	 */
	private static final long serialVersionUID = 1L;

	public ResultMap() {
	}

	/**
	 * Method name: success <BR>
	 * Description: Operation成功 <BR>
	 * Remark: <BR>
	 * 
	 * @return ResultMap<BR>
	 */
	public ResultMap success() {
		this.put("result", "success");
		return this;
	}

	/**
	 * Method name: fail <BR>
	 * Description: Operation失败 <BR>
	 * Remark: <BR>
	 * 
	 * @return ResultMap<BR>
	 */
	public ResultMap fail() {
		this.put("result", "fail");
		return this;
	}

	/**
	 * Method name: message <BR>
	 * Description: Back前台信息 <BR>
	 * Remark: <BR>
	 * 
	 * @param message
	 * @return ResultMap<BR>
	 */
	public ResultMap message(Object message) {
		this.put("message", message);
		return this;
	}
}