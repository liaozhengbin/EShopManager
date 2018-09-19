package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbQuestion;

public interface TbQuestionBiz {

    long totalCount();

    boolean deleteById(Integer questionId);

    boolean insert(TbQuestion record);
    
    List<TbQuestion> selectAll();

    TbQuestion selectById(Integer questionId);

    boolean update(Map<String,Object> map);

    boolean updateById(TbQuestion record);
}