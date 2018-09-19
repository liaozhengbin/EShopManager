package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.TbSalesMapper;
import com.iyunhe.pojo.SalesInfo;
import com.iyunhe.serivce.TbSalesBiz;

public class TbSalesBizImpl implements TbSalesBiz{

	private TbSalesMapper tbsalesmapper=DaoProxy.getInstance(TbSalesMapper.class);
	
	public List<SalesInfo> selectAllSales() {
		// TODO Auto-generated method stub
		return tbsalesmapper.selectAllSales();
	}

	public int deletesales(int book_id) {
		// TODO Auto-generated method stub
		return tbsalesmapper.deletesales(book_id);
	}

	public int insertsales(String sales_name,int book_id) {
		// TODO Auto-generated method stub
		SalesInfo sales=new SalesInfo();
		sales.setSales_name(sales_name);
		sales.setBook_id(book_id);
		return tbsalesmapper.insertsales(sales);
	}

	public int updatesalesname(String salesname, int book_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("salesname", salesname);
		map.put("book_id", book_id);
		return tbsalesmapper.updatesalesname(map);
	}

	
	
}
