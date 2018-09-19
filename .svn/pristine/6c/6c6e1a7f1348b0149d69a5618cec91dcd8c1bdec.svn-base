package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.common.OrderStatusConverter;
import com.iyunhe.common.PageUtil;
import com.iyunhe.mapper.TbOrderMapper;
import com.iyunhe.pojo.TbOrder;
import com.iyunhe.serivce.TbOrderBiz;
import com.iyunhe.util.ORMUtil;

public class TbOrderBizImpl implements TbOrderBiz{
	
	private TbOrderMapper orderMapper = DaoProxy.getInstance(TbOrderMapper.class);
	
	public long countStatusIsSend() {
		Map<String, Object> map = new HashMap<String, Object>();
		OrderStatusConverter.isSend(map);
		return orderMapper.count(map);
	}

	public long countStatusIsReceive() {
		Map<String, Object> map = new HashMap<String, Object>();
		OrderStatusConverter.isReceive(map);
		return orderMapper.count(map);
	}

	public long countStatusIsPay() {
		Map<String, Object> map = new HashMap<String, Object>();
		OrderStatusConverter.isPay(map);
		return orderMapper.count(map);
	}

	public long countStatusIsCancel() {
		Map<String, Object> map = new HashMap<String, Object>();
		OrderStatusConverter.isCancel(map);
		return orderMapper.count(map);
	}

	public long countStatusNoPay() {
		Map<String, Object> map = new HashMap<String, Object>();
		OrderStatusConverter.noPay(map);
		return orderMapper.count(map);
	}

	public double sumOrderPrice() {
		Map<String, Object> map = new HashMap<String, Object>();
		OrderStatusConverter.isPay(map);
		return orderMapper.sumOrderPrice(map);
	}

	public List<TbOrder> select(Map<String, Object> map) {
		OrderStatusConverter.orderStatus(map);
		PageUtil.initPage(map);
		return orderMapper.select(map);
	}

	public long count(Map<String, Object> map) {
		OrderStatusConverter.orderStatus(map);
		return orderMapper.count(map);
	}
	
	public TbOrder selectById(String orderId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderId", orderId);
		List<TbOrder> order = orderMapper.select(map);
		if (order!=null&&order.size()>0) {
			return order.get(0);
		}else{
			return null;
		}
		 
	}

	public List<TbOrder> selectIsSend(Map<String, Object> map) {
		OrderStatusConverter.isSend(map);
		PageUtil.initPage(map);
		return orderMapper.select(map);
	}

	public List<TbOrder> selectIsCancel(Map<String, Object> map) {
		OrderStatusConverter.isCancel(map);
		PageUtil.initPage(map);
		return orderMapper.select(map);
	}

	public boolean delete(String Id) {
		// TODO Auto-generated method stub
		return orderMapper.deleteById(Id)>0?true:false;
	}
	//修改状态
	public boolean updateStatus(Map<String,Object> map){
		OrderStatusConverter.orderStatus(map);
		return orderMapper.update(map)>0?true:false;
	}
	
	/**
	 * 修改状态
	 * @see com.iyunhe.serivce.TbOrderBiz#updateStatus(java.lang.String, int)
	 */
	public boolean updateStatus(String orderId, int orderStatus) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("orderId", orderId);
		map.put("orderStatus", orderStatus);
		OrderStatusConverter.orderStatus(map);
		TbOrder order = ORMUtil.getJavaBeans(map,TbOrder.class);
		return orderMapper.updateById(order)>0?true:false;
	}
}