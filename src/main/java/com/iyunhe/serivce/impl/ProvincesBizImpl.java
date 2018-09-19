package com.iyunhe.serivce.impl;

import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.ProvincesMapper;
import com.iyunhe.pojo.Provinces;
import com.iyunhe.serivce.ProvincesBiz;

public class ProvincesBizImpl implements ProvincesBiz {

	private ProvincesMapper provincesMapper = DaoProxy.getInstance(ProvincesMapper.class);
	
	public long count() {
		return provincesMapper.count(null);
	}

	public boolean deleteById(Integer id) {
		return provincesMapper.deleteById(id)>0?true:false;
	}

	public boolean insert(Provinces province) {
		return provincesMapper.insert(province)>0?true:false;
	}

	public List<Provinces> selectAll() {
		return provincesMapper.select(null);
	}

	public Provinces selectById(Integer id) {
		return provincesMapper.selectById(id);
	}

	public boolean update(Map<String, Object> map) {
		return provincesMapper.update(map)>0?true:false;
	}

	public boolean updateById(Provinces province) {
		return provincesMapper.updateById(province)>0?true:false;
	}

}