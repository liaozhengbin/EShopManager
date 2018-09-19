package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbOperateLog;

public interface TbOperateLogMapper {

    /**
     * @return 总记录数
     */
    long count(Map<String,Object> map);
    
    /**
     * @return 总记录数
     */
    List<TbOperateLog> select(Map<String,Object> map);
    
    List<TbOperateLog> selectById(String operateId);

    int delete(String recordId);

    int insert(TbOperateLog operateLog);

    int updateById(TbOperateLog operateLog);

    int update(Map<String,Object> map);
}