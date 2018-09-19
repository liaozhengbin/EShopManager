package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.Areas;

public interface AreasMapper {

    long count(Map<String,Object> map);

    int deleteById(Integer id);

    int insert(Areas record);

    List<Areas> select(Map<String,Object> map);

    Areas selectById(Integer id);

    int update(Map<String,Object> map);
    
    int updateById(Areas record);
}