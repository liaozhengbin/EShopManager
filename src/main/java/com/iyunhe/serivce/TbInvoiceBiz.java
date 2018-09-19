package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbInvoice;

public interface TbInvoiceBiz {

	/**
	 * 根据orderId查询订单
	 * @param orderId 查询条件
	 * @return 订单
	 */
	TbInvoice selectById(String invoiceId);

	boolean updateStatus(Map<String,Object> map);

	/**
	 * 根据条件查询订单
	 * @param map 查询条件
	 * @return 订单List
	 */
	List<TbInvoice> select(Map<String,Object> map);

	/**
	 * 根据条件查询订单数目
	 * @param map 查询条件
	 * @return 订单数量
	 */
	long count(Map<String,Object> map);

	boolean insert(int userId,String orderId,int orderStatus);
	
    boolean delete(String Id);
}