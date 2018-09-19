package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.CitiesMapper;
import com.iyunhe.pojo.Cities;
import com.iyunhe.serivce.CitiesBiz;

public class CitiesBizImpl implements CitiesBiz {

	private CitiesMapper citiesMapper = DaoProxy.getInstance(CitiesMapper.class);
	
	public long count() {
		return citiesMapper.count(null);
	}

	public boolean deleteById(Integer id) {
		return citiesMapper.deleteById(id)>0?true:false;
	}

	public boolean insert(Cities cities) {
		return citiesMapper.insert(cities)>0?true:false;
	}

	public List<Cities> selectAll() {
		return citiesMapper.select(null);
	}

	public Cities selectById(Integer id) {
		return citiesMapper.selectById(id);
	}

	public boolean update(Map<String, Object> map) {
		return citiesMapper.update(map)>0?true:false;
	}

	public boolean updateById(Cities record) {
		return citiesMapper.updateById(record)>0?true:false;
	}

	public List<Cities> selectByProvinceID(String provinceID) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("provinceid", provinceID);
		return citiesMapper.select(map);
	}
}