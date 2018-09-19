package com.iyunhe.serivce;

import java.util.List;

import com.iyunhe.pojo.TbType;

public interface TbTypeBiz {

    List<TbType> select();

    //查询所有一级分类
    List<TbType> selectAllType();
    
    //查询所有子分类
    List<TbType> selectAllTypeSon(int type_id);
    
    //删除分类
    int deleteType(int type_id);
}