package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbOperateLog;

public interface TbOperateLogBiz {

	/**
	 * 根据orderId查询订单
	 * @param orderId 查询条件
	 * @return 订单
	 */
	List<TbOperateLog> selectById(String orderId);

	boolean updateStatus(Map<String,Object> map);

	boolean updateStatus(int userId,String orderId,int orderStatus);
	
	List<TbOperateLog> select(Map<String,Object> map);

	long count(Map<String,Object> map);
	
    boolean delete(String Id);
}