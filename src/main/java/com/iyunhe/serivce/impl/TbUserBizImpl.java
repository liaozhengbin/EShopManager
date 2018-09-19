package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.common.PageUtil;
import com.iyunhe.mapper.TbUserMapper;
import com.iyunhe.pojo.TbUser;
import com.iyunhe.serivce.TbUserBiz;

public class TbUserBizImpl implements TbUserBiz{

	private TbUserMapper userMapper = DaoProxy.getInstance(TbUserMapper.class);
	
	public long totalCount() {
		
		return userMapper.count(null);
	}

	public long totalCountIsOnline() {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("isOnline", 1);
		return userMapper.count(map);
	}

	public List<TbUser> selectForIndexPage() {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("pageSize", 5);
		return userMapper.select(map);
	}

	public List<TbUser> selectForUserPage() {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("isOnline", 1);
		return userMapper.select(map);
	}

	public boolean insert(TbUser record) {
		// TODO Auto-generated method stub
		return userMapper.insert(record)>0?true:false;
	}

	public List<TbUser> select(Map<String, Object> map) {
		PageUtil.initPage(map);
		return userMapper.select(map);
	}

	public long count(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.count(map);
	}

	public TbUser selectById(int userId) {
		// TODO Auto-generated method stub
		return userMapper.selectById(userId);
	}

	public boolean delete(int userId) {
		// TODO Auto-generated method stub
		return userMapper.delete(userId)>0?true:false;
	}

	public boolean updateById(TbUser record) {
		// TODO Auto-generated method stub
		return userMapper.updateById(record)>0?true:false;
	}

}