package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.common.OrderStatusConverter;
import com.iyunhe.common.PageUtil;
import com.iyunhe.mapper.TbInvoiceMapper;
import com.iyunhe.pojo.TbInvoice;
import com.iyunhe.serivce.TbInvoiceBiz;
import com.iyunhe.util.ORMUtil;

public class TbInvoiceBizImpl implements TbInvoiceBiz{

	private TbInvoiceMapper invoiceMapper = DaoProxy.getInstance(TbInvoiceMapper.class);

	public TbInvoice selectById(String invoiceId) {
		// TODO Auto-generated method stub
		return invoiceMapper.selectById(invoiceId);
	}

	public boolean updateStatus(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return invoiceMapper.update(map)>0?true:false;
	}

	public List<TbInvoice> select(Map<String, Object> map) {
		PageUtil.initPage(map);
		return invoiceMapper.select(map);
	}

	public List<TbInvoice> select(Integer currentPage,Integer pageSize) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginIndex", currentPage);
		map.put("pageSize", pageSize);
		PageUtil.initPage(map);
		return invoiceMapper.select(map);
	}

	public long count(Map<String, Object> map) {
		return invoiceMapper.count(null);
	}
	public boolean delete(String Id) {
		// TODO Auto-generated method stub
		return invoiceMapper.delete(Id)>0?true:false;
	}

	public boolean insert(int userId,String orderId,int orderStatus) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("orderId", orderId);
		OrderStatusConverter.orderStatus(orderStatus,map);
		TbInvoice tbInvoice = ORMUtil.getJavaBeans(map,TbInvoice.class);
		return invoiceMapper.insert(tbInvoice)>0?true:false;
	}

}