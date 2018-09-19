package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.AreasMapper;
import com.iyunhe.pojo.Areas;
import com.iyunhe.serivce.AreasBiz;

public class AreasBizImpl implements AreasBiz {

	private AreasMapper areaMapper = DaoProxy.getInstance(AreasMapper.class);
	public long count() {
		// TODO Auto-generated method stub
		return areaMapper.count(null);
	}

	public boolean deleteById(Integer id) {
		// TODO Auto-generated method stub
		return areaMapper.deleteById(id)>0?true:false;
	}

	public boolean insert(Areas record) {
		// TODO Auto-generated method stub
		return areaMapper.insert(record)>0?true:false;
	}

	public List<Areas> selectAll() {
		return areaMapper.select(null);
	}

	public Areas selectById(Integer id) {
		// TODO Auto-generated method stub
		return areaMapper.selectById(id);
	}

	public boolean update(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return areaMapper.update(map)>0?true:false;
	}

	public boolean updateById(Areas record) {
		// TODO Auto-generated method stub
		return areaMapper.updateById(record)>0?true:false;
	}

	public List<Areas> selectByCitiesId(String cityId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cityid", cityId);
		return areaMapper.select(map);
	}

}