package com.iyunhe.serivce.impl;

import java.util.List;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.TbTypeMapper;
import com.iyunhe.pojo.TbType;
import com.iyunhe.serivce.TbTypeBiz;

public class TbTypeBizImpl implements TbTypeBiz {
	private TbTypeMapper typeMapper = DaoProxy.getInstance(TbTypeMapper.class);
	
	public List<TbType> select() {
		// TODO Auto-generated method stub
		return typeMapper.select();
	}
	
	
	public List<TbType> selectAllType() {
		// TODO Auto-generated method stub
		return typeMapper.selectAllType();
	}


	public List<TbType> selectAllTypeSon(int type_id) {
		// TODO Auto-generated method stub
		return typeMapper.selectAllTypeSon(type_id);
	}


	public int deleteType(int type_id) {
		// TODO Auto-generated method stub
		return typeMapper.deleteType(type_id);
	}

}