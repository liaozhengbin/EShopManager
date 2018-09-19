package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.common.OrderStatusConverter;
import com.iyunhe.mapper.TbOperateLogMapper;
import com.iyunhe.pojo.TbOperateLog;
import com.iyunhe.serivce.TbOperateLogBiz;
import com.iyunhe.util.ORMUtil;

public class TbOperateLogBizImpl implements TbOperateLogBiz{

	private TbOperateLogMapper operateLogMapper = DaoProxy.getInstance(TbOperateLogMapper.class);

	public List<TbOperateLog> selectById(String orderId) {
		// TODO Auto-generated method stub
		return operateLogMapper.selectById(orderId);
	}

	public boolean updateStatus(Map<String, Object> map) {
		OrderStatusConverter.orderStatus(map);
		TbOperateLog operateLog = ORMUtil.getJavaBeans(map,TbOperateLog.class);
		return operateLogMapper.insert(operateLog)>0?true:false;
	}

	public List<TbOperateLog> select(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return operateLogMapper.select(map);
	}

	public long count(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return operateLogMapper.count(map);
	}
	public boolean delete(String recordId) {
		// TODO Auto-generated method stub
		return operateLogMapper.delete(recordId)>0?true:false;
	}

	public boolean updateStatus(int userId,String orderId, int orderStatus) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("orderId", orderId);
		map.put("userId", userId);
		OrderStatusConverter.orderStatus(orderStatus,map);
		TbOperateLog operateLog = ORMUtil.getJavaBeans(map,TbOperateLog.class);
		return operateLogMapper.insert(operateLog)>0?true:false;
	}

}