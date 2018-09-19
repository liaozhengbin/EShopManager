package com.iyunhe.serivce;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.iyunhe.pojo.TbCart;

public interface TbCartBiz {

    long countByExample(TbCart example);

    int deleteByExample(TbCart example);

    int insert(TbCart record);

    int insertSelective(TbCart record);

    List<TbCart> selectByExample(TbCart example);

    int updateByExampleSelective(@Param("record") TbCart record, @Param("example") TbCart example);

    int updateByExample(@Param("record") TbCart record, @Param("example") TbCart example);
}