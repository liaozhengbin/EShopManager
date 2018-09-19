package com.iyunhe.common;

import java.util.Map;

/**
 * 定单状态转换器
 * 实现定单的各个状态的设置
 * @author Administrator
 */
public class OrderStatusConverter {

	public static void orderStatus(Map<String, Object> map) {
		Object orderStatus = map.get("orderStatus");
		if (orderStatus != null) {
			int status = Integer.parseInt(orderStatus.toString());
			orderStatus(status, map);
		}
	}

	
	/**
	 * 状态转化－1：取消；0：未付款；1：已付款；2：已发货；3：已完成
	 * @param status 状态
	 * @param map 存放状态
	 */
	public static void orderStatus(int status, Map<String, Object> map) {
		switch (status) {
		case -1:
			isCancel(map);
			break;
		case 0:
			noPay(map);
			break;
		case 1:
			isPay(map);
			break;
		case 2:
			isSend(map);
			break;
		case 3:
			isReceive(map);
			break;

		default:
			break;
		}
	}

	/**
	 * 状态：未付款
	 */
	public static void noPay(Map<String, Object> map) {
		map.put("statusPay", 0);
		map.put("statusSend", 0);
		map.put("statusReceive", 0);
		map.put("status", 1);
	}

	/**
	 * 状态：已付款
	 */
	public static void isPay(Map<String, Object> map) {
		map.put("statusPay", 1);
		map.put("statusSend", 0);
		map.put("statusReceive", 0);
		map.put("status", 1);
	}

	/**
	 * 状态：已发货
	 */
	public static void isSend(Map<String, Object> map) {
		map.put("statusPay", 1);
		map.put("statusSend", 1);
		map.put("statusReceive", 0);
		map.put("status", 1);
	}

	/**
	 * 状态：已取消
	 */
	public static void isCancel(Map<String, Object> map) {
		map.put("status", -1);
	}

	/**
	 * 状态：已收货
	 */
	public static void isReceive(Map<String, Object> map) {
		map.put("statusPay", 1);
		map.put("statusSend", 1);
		map.put("statusReceive", 1);
		map.put("status", 1);
	}

}
