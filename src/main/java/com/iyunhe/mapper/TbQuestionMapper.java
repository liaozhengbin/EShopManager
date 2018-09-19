package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbQuestion;

public interface TbQuestionMapper {

    long count(Map<String,Object> map);

    int delete(Map<String,Object> map);

    int deleteById(Integer questionId);

    int insert(TbQuestion record);
    
    List<TbQuestion> select(Map<String,Object> map);

    TbQuestion selectById(Integer questionId);

    int update(Map<String,Object> map);

    int updateById(TbQuestion record);
}