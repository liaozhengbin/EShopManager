package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbOrderDetail;

public interface TbOrderDetailBiz {

	long count(Map<String, Object> map);

    List<TbOrderDetail> select(Map<String,Object> map);

    List<TbOrderDetail> select(String orderId);
    
    int update(Map<String,Object> map);
    
    int insert(TbOrderDetail record);
}