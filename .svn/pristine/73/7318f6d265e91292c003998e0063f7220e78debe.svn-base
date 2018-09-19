package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.TbOrderDetailMapper;
import com.iyunhe.pojo.TbOrderDetail;
import com.iyunhe.serivce.TbOrderDetailBiz;

public class TbOrderDetailBizImpl implements TbOrderDetailBiz {

	private TbOrderDetailMapper orderDetailMapper = DaoProxy.getInstance(TbOrderDetailMapper.class);
	
	public long count(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return orderDetailMapper.count(map);
	}

	public List<TbOrderDetail> select(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return orderDetailMapper.select(map);
	}

	public int update(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return orderDetailMapper.update(map);
	}

	public int insert(TbOrderDetail record) {
		// TODO Auto-generated method stub
		return orderDetailMapper.insert(record);
	}

	public List<TbOrderDetail> select(String orderId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderId", orderId);
		return orderDetailMapper.select(map);
	}

}