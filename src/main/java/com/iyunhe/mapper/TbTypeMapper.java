package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbType;

public interface TbTypeMapper {

	List<TbType> select();
	   
    long count(Map<String,Object> map);

    int delete(Map<String,Object> map);

    int insert(TbType record);
   
    int update(Map<String,Object> map);

    //查询所有的以及分类
    List<TbType> selectAllType();
    
    //查询所有的二级分类
    List<TbType> selectAllTypeSon(int type_id);
   
    //删除分类
    int deleteType(int type_id);
}