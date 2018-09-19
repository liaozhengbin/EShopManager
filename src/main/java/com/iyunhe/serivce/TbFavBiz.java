package com.iyunhe.serivce;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.iyunhe.pojo.TbFav;

public interface TbFavBiz {

    long countByExample(TbFav example);

    int deleteByExample(TbFav example);

    int insert(TbFav record);

    int insertSelective(TbFav record);

    List<TbFav> selectByExample(TbFav example);

    int updateByExampleSelective(@Param("record") TbFav record, @Param("example") TbFav example);

    int updateByExample(@Param("record") TbFav record, @Param("example") TbFav example);
}