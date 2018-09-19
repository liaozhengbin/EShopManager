package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbOrderDetail;

public interface TbOrderDetailMapper {

	long count(Map<String, Object> map);

    List<TbOrderDetail> select(Map<String,Object> map);
    
    int update(Map<String,Object> map);
    
    int insert(TbOrderDetail record);
}