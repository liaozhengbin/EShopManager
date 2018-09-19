package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbUser;

public interface TbUserMapper {

    /**
     * @return 总记录数
     */
    long count(Map<String,Object> map);
    
    /**
     * @return 总记录数
     */
    List<TbUser> select(Map<String,Object> map);
    
    TbUser selectById(int userId);

    int delete(int userId);

    int insert(TbUser record);

    int updateById(TbUser record);
}